.class public final Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideVideoTorchInitializerFactory;
.super Ljava/lang/Object;
.source "UiControllerInitializersModule_ProvideVideoTorchInitializerFactory.java"

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
.field private final cameraActivityUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;"
        }
    .end annotation
.end field

.field private final flashPropertyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;"
        }
    .end annotation
.end field

.field private final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private final videoTorchStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoTorchStatechart;",
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
            "Lcom/android/camera/ui/controller/VideoTorchStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideVideoTorchInitializerFactory;->videoTorchStatechartProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideVideoTorchInitializerFactory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideVideoTorchInitializerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideVideoTorchInitializerFactory;->flashPropertyProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideVideoTorchInitializerFactory;->resourcesProvider:Ljavax/inject/Provider;

    .line 42
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 13
    .line 1046
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideVideoTorchInitializerFactory;->videoTorchStatechartProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/VideoTorchStatechart;

    iget-object v4, p0, Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideVideoTorchInitializerFactory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideVideoTorchInitializerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/async/MainThread;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideVideoTorchInitializerFactory;->flashPropertyProvider:Ljavax/inject/Provider;

    .line 1051
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/async/Observable;

    iget-object v3, p0, Lcom/android/camera/ui/controller/initializers/UiControllerInitializersModule_ProvideVideoTorchInitializerFactory;->resourcesProvider:Ljavax/inject/Provider;

    .line 1052
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .line 1047
    invoke-static {v0, v4, v1, v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideVideoTorchInitializer$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHFAPKM8PBFAHNN4OR8ADQ62T35CDK62SJK7D66KOBMC5S2UQBED9IM6T1FA1P6UTJ9CHIN4EQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNKQOB9DPA6GSJ5C5I3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R9HGMSP3IDTKM8BR3DTN78PBEEGNN4PBJ5T96ASRFELP66PBJ7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9FCDNMST3IDTM6OPBI5TKMSQBKD5GMOQBQCLP76BQMD5I6ARQKDTP66Q2JEHGN8PB3D1GN4T29DPKN8QB1DHKNKPBI7C______(Lcom/android/camera/ui/controller/VideoTorchStatechart;Ljavax/inject/Provider;Lcom/google/android/apps/camera/async/MainThread;Lcom/google/android/apps/camera/async/Observable;Landroid/content/res/Resources;)Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1046
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;

    .line 13
    return-object v0
.end method
