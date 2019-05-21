.class public final Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;
.super Ljava/lang/Object;
.source "DaggerImageSourceComponent.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;
    }
.end annotation


# instance fields
.field private imageReaderImageSource2Provider:Ljavax/inject/Provider;

.field private imageReaderImageSourceProvider:Ljavax/inject/Provider;

.field private provideHandlerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/HandlerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageDistributorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributor;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageReaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageReaderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageSourceLifetimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Lifetime;",
            ">;"
        }
    .end annotation
.end field

.field private provideImageSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;",
            ">;"
        }
    .end annotation
.end field

.field private provideLoggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/debug/Logger$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private provideSharedImageSourceTicketPoolProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagemanagement/ticketpool/TicketProvider;",
            ">;"
        }
    .end annotation
.end field

.field private provideSurfaceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;)V
    .locals 6

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1067
    invoke-static {p1}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->access$100(Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;)Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;

    move-result-object v0

    .line 2024
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule_ProvideSurfaceFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule_ProvideSurfaceFactory;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;)V

    .line 1067
    iput-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideSurfaceProvider:Ljavax/inject/Provider;

    .line 1070
    invoke-static {p1}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->access$200(Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;)Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;

    move-result-object v0

    .line 2026
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig_ProvideImageSourceLifetimeFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig_ProvideImageSourceLifetimeFactory;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;)V

    .line 1070
    iput-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideImageSourceLifetimeProvider:Ljavax/inject/Provider;

    .line 1074
    invoke-static {p1}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->access$100(Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;)Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;

    move-result-object v0

    .line 3025
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule_ProvideImageReaderFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule_ProvideImageReaderFactory;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagereader/ImageReaderModule;)V

    .line 1073
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideImageReaderProvider:Ljavax/inject/Provider;

    .line 1078
    invoke-static {p1}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMARB1DPGMEPBDCLN78BR9DLGMEPBJDTQN4OR55T262PR7CLP4IRB1CTIL6RRLE9HMAGRFDLO6URJ5DPQ28GJLD5M68PBI7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2SRPDPHIUHBOCLHNAT3FE96MUP3LDHIN6921DPI74RR9CH0N0S25F1IM6TBKDTP76JBFCHQMOP9R(Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;)Lcom/android/camera/behavior/Behaviors;

    move-result-object v0

    .line 1077
    invoke-static {v0}, Lcom/android/camera/async/ExecutorModules_AndroidAppExecutorsModule_ProvideHandlerFactoryFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TGN6UBECCNKAU35CDQN8RRI9LNM8TBCCLPI8GBECHP6UQB485O70HBOCLHNAT3FE9PKQRR4ELM6AEP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Lcom/android/camera/behavior/Behaviors;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideHandlerFactoryProvider:Ljavax/inject/Provider;

    .line 1081
    invoke-static {p1}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->access$400(Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;)Lcom/android/camera/debug/DebugModule;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/debug/DebugModule_ProvideLoggerFactoryFactory;->create$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI6AOJLCSNK8PB2ELJKQRR4ELM6AEP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Lcom/android/camera/debug/DebugModule;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideLoggerFactoryProvider:Ljavax/inject/Provider;

    .line 1086
    invoke-static {}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/MetadataPool_Factory;->create$50KKOP31CTJMASHFD5N78PBIDPGMOBQ6C5HN8RRIF4TG____()Ljavax/inject/Provider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideImageSourceLifetimeProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideImageReaderProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideHandlerFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideLoggerFactoryProvider:Ljavax/inject/Provider;

    .line 3061
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule_ProvideImageDistributorFactory;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/ImageDistributorModule_ProvideImageDistributorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1084
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideImageDistributorProvider:Ljavax/inject/Provider;

    .line 1092
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideImageSourceLifetimeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideImageReaderProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideImageDistributorProvider:Ljavax/inject/Provider;

    .line 4040
    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource_Factory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1093
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->imageReaderImageSourceProvider:Ljavax/inject/Provider;

    .line 1099
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideImageSourceLifetimeProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideImageReaderProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideImageDistributorProvider:Ljavax/inject/Provider;

    .line 5040
    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2_Factory;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSource2_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1100
    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->imageReaderImageSource2Provider:Ljavax/inject/Provider;

    .line 1108
    invoke-static {p1}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->access$200(Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;)Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;

    move-result-object v0

    .line 6026
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig_ProvideSharedImageSourceTicketPoolFactory;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig_ProvideSharedImageSourceTicketPoolFactory;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagesource/ImageSourceConfig;)V

    .line 1107
    iput-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideSharedImageSourceTicketPoolProvider:Ljavax/inject/Provider;

    .line 1113
    invoke-static {p1}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;->access$500(Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;)Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->imageReaderImageSourceProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->imageReaderImageSource2Provider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideSharedImageSourceTicketPoolProvider:Ljavax/inject/Provider;

    .line 6050
    new-instance v4, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule_ProvideImageSourceFactory;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule_ProvideImageSourceFactory;-><init>(Lcom/android/camera/one/v2/imagemanagement/frame/ImageReaderImageSourceModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 1111
    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideImageSourceProvider:Ljavax/inject/Provider;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;B)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;-><init>(Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent$Builder;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final imageSource()Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideImageSourceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagemanagement/frame/FrameManager$ImageSource;

    return-object v0
.end method

.method public final surface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/imagesource/DaggerImageSourceComponent;->provideSurfaceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    return-object v0
.end method
