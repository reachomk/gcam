.class public final Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;
.super Ljava/lang/Object;
.source "ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory.java"

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
.field private final apiHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceFutureProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final fatalErrorHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/HandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final lifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final logFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final pictureConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final streamConfigsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;",
            ">;>;"
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
.method private constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/HandlerFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorHandler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p2, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->deviceFutureProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p3, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->streamConfigsProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p4, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p5, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->handlerFactoryProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p6, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->pictureConfigurationProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p7, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->fatalErrorHandlerProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p8, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p9, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->traceProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p10, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->executorProvider:Ljavax/inject/Provider;

    .line 75
    return-void
.end method

.method public static create$5166KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCD9GNCOBO5TKMSQJ5CDQ2UK3IDTR6IP35E8TKOQJ1EPGNGBR9DPL6AORK5T874RRMD5I6ASHR9HL62TJ1F0NMIRJACLHN8BQGE9NNCQB4CLP3MJ3AC5R62U1FD5N6KPB3EGNL0SJFEPKM8PBI7CKKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/CameraDeviceProxy;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/stream/AsyncStreamConfig;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/HandlerFactory;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/util/PictureConfiguration;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/error/FatalErrorHandler;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/ApiHelper;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/trace/Trace;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Ljavax/inject/Provider;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 13

    .prologue
    .line 20
    .line 1079
    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->lifetimeProvider:Ljavax/inject/Provider;

    .line 1081
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->deviceFutureProvider:Ljavax/inject/Provider;

    .line 1082
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->streamConfigsProvider:Ljavax/inject/Provider;

    .line 1083
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->logFactoryProvider:Ljavax/inject/Provider;

    .line 1084
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/debug/Logger$Factory;

    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->handlerFactoryProvider:Ljavax/inject/Provider;

    .line 1085
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/camera/async/HandlerFactory;

    iget-object v0, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->pictureConfigurationProvider:Ljavax/inject/Provider;

    .line 1086
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/util/PictureConfiguration;

    iget-object v5, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->fatalErrorHandlerProvider:Ljavax/inject/Provider;

    .line 1087
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/error/FatalErrorHandler;

    iget-object v7, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->apiHelperProvider:Ljavax/inject/Provider;

    .line 1088
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/util/ApiHelper;

    iget-object v7, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->traceProvider:Ljavax/inject/Provider;

    .line 1089
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/debug/trace/Trace;

    iget-object v7, p0, Lcom/android/camera/one/v2/cameracapturesession/ReprocessableCameraCaptureSessionModule_ProvideReprocessableCaptureSessionCreatorFactory;->executorProvider:Ljavax/inject/Provider;

    .line 1090
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/Executor;

    .line 2070
    invoke-virtual {v0}, Lcom/android/camera/one/v2/util/PictureConfiguration;->getLargeImageReaderSpec()Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;

    move-result-object v0

    .line 2071
    new-instance v7, Landroid/hardware/camera2/params/InputConfiguration;

    .line 2073
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->getSize()Lcom/android/camera/util/Size;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->getSize()Lcom/android/camera/util/Size;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v12

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderFormat;->getImageFormat()I

    move-result v0

    invoke-direct {v7, v11, v12, v0}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 2074
    new-instance v0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    .line 2081
    invoke-static {v7}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v7

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;-><init>(Lcom/google/android/apps/camera/async/Lifetime;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/Set;Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/error/FatalErrorHandler;Lcom/google/android/apps/camera/async/HandlerFactory;Lcom/google/common/base/Optional;Lcom/android/camera/util/ApiHelper;Lcom/android/camera/debug/trace/Trace;Ljava/util/concurrent/Executor;)V

    .line 1080
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1079
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/cameracapturesession/CaptureSessionCreator;

    .line 20
    return-object v0
.end method
