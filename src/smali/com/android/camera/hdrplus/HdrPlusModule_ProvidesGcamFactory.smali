.class public final Lcom/android/camera/hdrplus/HdrPlusModule_ProvidesGcamFactory;
.super Ljava/lang/Object;
.source "HdrPlusModule_ProvidesGcamFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final featureConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final gservicesHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;"
        }
    .end annotation
.end field

.field private final hdrPlusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusState;",
            ">;"
        }
    .end annotation
.end field

.field private final oneCameraManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;"
        }
    .end annotation
.end field

.field private final traceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/OneCameraManager;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/OneCameraFeatureConfig;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/hdrplus/HdrPlusState;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/hdrplus/HdrPlusModule_ProvidesGcamFactory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/android/camera/hdrplus/HdrPlusModule_ProvidesGcamFactory;->featureConfigProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/android/camera/hdrplus/HdrPlusModule_ProvidesGcamFactory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/android/camera/hdrplus/HdrPlusModule_ProvidesGcamFactory;->hdrPlusProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/android/camera/hdrplus/HdrPlusModule_ProvidesGcamFactory;->traceProvider:Ljavax/inject/Provider;

    .line 41
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    .line 13
    .line 1045
    iget-object v0, p0, Lcom/android/camera/hdrplus/HdrPlusModule_ProvidesGcamFactory;->oneCameraManagerProvider:Ljavax/inject/Provider;

    .line 1047
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCameraManager;

    iget-object v1, p0, Lcom/android/camera/hdrplus/HdrPlusModule_ProvidesGcamFactory;->featureConfigProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/OneCameraFeatureConfig;

    iget-object v2, p0, Lcom/android/camera/hdrplus/HdrPlusModule_ProvidesGcamFactory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/hdrplus/HdrPlusModule_ProvidesGcamFactory;->hdrPlusProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/hdrplus/HdrPlusState;

    iget-object v3, p0, Lcom/android/camera/hdrplus/HdrPlusModule_ProvidesGcamFactory;->traceProvider:Ljavax/inject/Provider;

    .line 1051
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/debug/trace/Trace;

    .line 1062
    const-string v5, "Gcam#provide"

    invoke-interface {v3, v5}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v2}, Lcom/android/camera/hdrplus/HdrPlusState;->getInitParams()Lcom/google/googlex/gcam/InitParams;

    move-result-object v5

    .line 1069
    new-array v6, v10, [Lcom/android/camera/one/OneCamera$Facing;

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    aput-object v2, v6, v4

    const/4 v2, 0x1

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    aput-object v7, v6, v2

    .line 1070
    new-instance v7, Lcom/google/googlex/gcam/StaticMetadataVector;

    invoke-direct {v7}, Lcom/google/googlex/gcam/StaticMetadataVector;-><init>()V

    move v2, v4

    .line 1071
    :goto_0
    if-ge v2, v10, :cond_1

    aget-object v4, v6, v2

    .line 1072
    invoke-virtual {v1, v4}, Lcom/android/camera/one/v2/OneCameraFeatureConfig;->getHdrPlusSupportLevel$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9F9TN6AGR1DLIN4O948PGM6QBECSTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIURRECKNNCCHF9TN6AGR1DLIN4OA6CLGN8TBICL1MURJ6D5JI8I34E986OTBJADQN0S3FE9Q4OPBMCLM3M___(Lcom/android/camera/one/OneCamera$Facing;)I

    move-result v8

    sget v9, Lcom/android/camera/one/v2/OneCameraFeatureConfig$HdrPlusSupportLevel;->NONE$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NKURJ58DGMQPBIC536AOBKELP6AGRFDPJ6IPP491I74K3CELPL6TBGE1NN4T2CCLR6AR1R:I

    if-eq v8, v9, :cond_0

    .line 1076
    invoke-interface {v0, v4}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/google/android/apps/camera/device/CameraId;

    move-result-object v4

    .line 1077
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1079
    invoke-interface {v0, v4}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v4

    .line 1080
    if-eqz v4, :cond_0

    .line 1082
    invoke-static {v4}, Lcom/android/camera/hdrplus/HdrPlusMetadataConverter;->convertToGcamStaticMetadata(Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v4

    .line 1083
    invoke-virtual {v7, v4}, Lcom/google/googlex/gcam/StaticMetadataVector;->add(Lcom/google/googlex/gcam/StaticMetadata;)V

    .line 1071
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1089
    :cond_1
    invoke-static {}, Lcom/android/camera/hdrplus/GcamUtils;->getDebugParams()Lcom/google/googlex/gcam/DebugParams;

    move-result-object v0

    .line 1092
    invoke-static {v5, v7, v0}, Lcom/google/googlex/gcam/Gcam;->Create(Lcom/google/googlex/gcam/InitParams;Lcom/google/googlex/gcam/StaticMetadataVector;Lcom/google/googlex/gcam/DebugParams;)Lcom/google/googlex/gcam/Gcam;

    move-result-object v0

    .line 1094
    invoke-interface {v3}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 1046
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1045
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/gcam/Gcam;

    .line 13
    return-object v0
.end method
