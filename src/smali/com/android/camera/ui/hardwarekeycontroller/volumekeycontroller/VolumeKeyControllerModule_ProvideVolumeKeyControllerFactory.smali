.class public final Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyControllerModule_ProvideVolumeKeyControllerFactory;
.super Ljava/lang/Object;
.source "VolumeKeyControllerModule_ProvideVolumeKeyControllerFactory.java"

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
.field private final activityLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
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

.field private final volumeKeyActionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/res/Resources;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyControllerModule_ProvideVolumeKeyControllerFactory;->activityLifecycleProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyControllerModule_ProvideVolumeKeyControllerFactory;->resourcesProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyControllerModule_ProvideVolumeKeyControllerFactory;->volumeKeyActionProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyControllerModule_ProvideVolumeKeyControllerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 36
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 12
    .line 1040
    iget-object v0, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyControllerModule_ProvideVolumeKeyControllerFactory;->activityLifecycleProvider:Ljavax/inject/Provider;

    .line 1042
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;

    iget-object v1, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyControllerModule_ProvideVolumeKeyControllerFactory;->resourcesProvider:Ljavax/inject/Provider;

    .line 1043
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyControllerModule_ProvideVolumeKeyControllerFactory;->volumeKeyActionProvider:Ljavax/inject/Provider;

    .line 1044
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/async/Observable;

    iget-object v3, p0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyControllerModule_ProvideVolumeKeyControllerFactory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1045
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/camera/async/MainThread;

    .line 1041
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->provideVolumeKeyController$51666RRD5TJMURR7DHIIUOBECHP6UQB45TM6IOJIC5P6IPBJ5TPN8QBKCDK2UR39CPIM6UB3DHIIUJ39CPIM6UB3DHIJMJ31DPI74RR9CGNM6RREEHIMST1FE9IN6BQICLPMUTBICDIN6EQCCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR8C5P68TR1E9IMMPBPCDNMST3IDTM6OPBI5TR6UR3LDLIMMPBPCDNMST3IDTM6OPBI5TB6UR3LDLIKMPBP8DNMST3IDTM6OPBI7C______(Lcom/google/android/libraries/stitch/lifecycle/Lifecycle;Landroid/content/res/Resources;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/apps/camera/async/MainThread;)Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1040
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    .line 12
    return-object v0
.end method
