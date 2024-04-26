from django.shortcuts import render

# Create your views here.
from rest_framework_extensions.cache import mixins

from rest_framework.authentication import TokenAuthentication

from rest_framework import status
from rest_framework.generics import ListAPIView
from rest_framework.pagination import PageNumberPagination
from rest_framework.response import Response
from rest_framework.views import APIView
from goods.filters import GoodsFilter
from goods.serializers import GoodsTypeSerializer, GoodsImageSerializer, GoodsSerializer, \
    GoodsSKUSerializer, IndexGoodsBannerSerializer, IndexPromotionBannerSerializer, IndexTypeSerializer
from .models import Goods, GoodsSKU, GoodsType, GoodsImage, IndexGoodsBanner, IndexPromotionBanner
from rest_framework import mixins
from rest_framework import generics
from rest_framework import viewsets
from rest_framework import filters
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework_extensions.cache.mixins import CacheResponseMixin
# 设置登录与未登录限速
from rest_framework.throttling import UserRateThrottle, AnonRateThrottle

# 商品列表分页类
class GoodsPagination(PageNumberPagination):
    page_size = 12
    # 向后台要多少条
    page_size_query_param = 'page_size'
    # 定制多少页的参数
    page_query_param = "page"
    max_page_size = 100


# class GoodsListView(mixins.ListModelMixin, generics.GenericAPIView):
# class GoodsListView(ListAPIView):
# class GoodsListView(mixins.ListModelMixin, viewsets.GenericViewSet):
class GoodsListViewSet(CacheResponseMixin, mixins.ListModelMixin, mixins.RetrieveModelMixin, viewsets.GenericViewSet):
    """
    商品列表页，分页，搜索，过滤，排序,取某一个具体商品的详情
    """

    # queryset是一个属性
    # good_viewset.queryset就可以访问到
    # 函数就必须调用good_viewset.get_queryset()函数
    # 如果有了下面的get_queryset。那么上面的这个就不需要了。
    # queryset = GoodsSKU.objects.all()

    # 以下来自viewsets.GenericViewSet,通过某个父继承得来以下变量
    # @查询所有
    queryset = GoodsSKU.objects.all()
    # @序列化器
    serializer_class = GoodsSKUSerializer
    # @分页器
    pagination_class = GoodsPagination
    # 设置三大常用过滤器之DjangoFilterBackend, SearchFilter搜索，OrderingFilter排序
    filter_backends = (DjangoFilterBackend, filters.SearchFilter, filters.OrderingFilter)
    # 限制API访问请求，限制客户端请求频率的一个属性。通过设置 throttle_classes 属性，可以限制客户端对 API 接口的请求频率，从而保护服务器的资源和数据安全。当某个客户端的请求量达到预设的阈值时，可以根据设置的限制策略，暂时禁止该客户端继续发送请求。这个属性通常被用在需要身份验证或者公开的 API 上，以避免被攻击或恶意请求。
    throttle_classes = (UserRateThrottle, AnonRateThrottle)

    # 设置列表页的单独auth认证也就是不认证
    # authentication_classes = (TokenAuthentication,)


    # 设置排序
    ordering_fields = ('sold_num', 'shop_price')
    # 设置filter的类为我们自定义的类
    filter_class = GoodsFilter

    # 设置我们的search字段
    search_fields = ('name', 'desc')

    # 设置我们需要进行过滤的字段
    # filter_fields = ('name', 'shop_price')



    # def get_queryset(self):
    #     # 价格大于100的
    #     price_min = self.request.query_params.get('price_min', 0)
    #     if price_min:
    #         self.queryset = Goods.objects.filter(shop_price__gt=int(price_min)).order_by('-add_time')
    #     return self.queryset
# class GoodsListView(APIView):
#     """
#     列出所有商品
#     """
#     def get(self, request, format=None):
#         goods = Goods.objects.all()[:10]
#         # 因为前面的是一个列表，加many=True
#         goods_json = GoodsSerializer(goods, many=True)
#         return Response(goods_json.data)

    # def post(self, request, format=None):
    #     serializer = GoodsSerializer(data=request.data)
    #     if serializer.is_valid():
    #         serializer.save()
    #         return Response(serializer.data, status=status.HTTP_201_CREATED)
    #     return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    # 商品点击数+1
    def retrieve(self, request, *args, **kwargs):
        instance = self.get_object()
        instance.click_num += 1
        instance.save()
        serializer = self.get_serializer(instance)
        return Response(serializer.data)

class CategoryViewset(mixins.ListModelMixin, mixins.RetrieveModelMixin, viewsets.GenericViewSet):
    """
    获取所有分类
    """
    queryset = GoodsType.objects.all()
    serializer_class = GoodsTypeSerializer


class IndexGoodsBannerViewset(mixins.ListModelMixin, viewsets.GenericViewSet):
    """
    获取轮播图列表
    """
    queryset = IndexGoodsBanner.objects.all().order_by("index")
    serializer_class = IndexGoodsBannerSerializer


class IndexPromotionBannerViewset(mixins.ListModelMixin, viewsets.GenericViewSet):
    """
    获取活动列表
    """
    queryset = IndexPromotionBanner.objects.all().order_by("index")
    serializer_class = IndexPromotionBannerSerializer


class IndexTypeViewset(mixins.ListModelMixin, mixins.RetrieveModelMixin, viewsets.GenericViewSet):
    """
    首页商品分类数据
    """
    queryset = GoodsType.objects.filter(name__in=[
                                            "新鲜水果",
                                            "海鲜水产",
                                            "猪牛羊肉",
                                            "禽类蛋品",
                                            "新鲜蔬菜",
                                            "速冻食品"])
    serializer_class = IndexTypeSerializer


class NewGoodsViewset(mixins.ListModelMixin, viewsets.GenericViewSet):
    '''首页 新品开售 数据'''
    queryset = GoodsSKU.objects.filter(is_new=True)
    serializer_class = GoodsSKUSerializer
class HotGoodsViewset(mixins.ListModelMixin, viewsets.GenericViewSet):
    '''首页 热门商品 数据'''
    queryset = GoodsSKU.objects.filter(is_hot=True)
    serializer_class = GoodsSKUSerializer
class RecommendGoodsViewset(mixins.ListModelMixin, viewsets.GenericViewSet):
    '''首页 官方推荐 数据'''
    queryset = GoodsSKU.objects.filter(is_recommend=True)
    serializer_class = GoodsSKUSerializer