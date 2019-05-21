.class public final Lcom/android/camera/hdrplus/HdrPlusFeatureConfig;
.super Ljava/lang/Object;
.source "HdrPlusFeatureConfig.java"


# instance fields
.field private final apiHelper:Lcom/android/camera/util/ApiHelper;

.field private final gServicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/android/camera/util/ApiHelper;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusFeatureConfig;->gServicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 22
    iput-object p2, p0, Lcom/android/camera/hdrplus/HdrPlusFeatureConfig;->apiHelper:Lcom/android/camera/util/ApiHelper;

    .line 23
    return-void
.end method


# virtual methods
.method public final getMaxBurstSize()I
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusFeatureConfig;->gServicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getMaxHdrPlusBurstFrameCount()I

    move-result v0

    .line 38
    const/4 v1, 0x3

    .line 39
    invoke-static {}, Lcom/android/camera/util/SystemProperties;->instance()Lcom/android/camera/util/SystemProperties;

    move-result-object v2

    const-string v3, "persist.gcam.max_burst_size"

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 37
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getZslBufferSize()I
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusFeatureConfig;->gServicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->getZslBufferCount()I

    move-result v0

    .line 50
    const/4 v1, 0x3

    .line 51
    invoke-static {}, Lcom/android/camera/util/SystemProperties;->instance()Lcom/android/camera/util/SystemProperties;

    move-result-object v2

    const-string v3, "persist.gcam.zsl_buffer_size"

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 49
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
