.class public final Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer_Factory;
.super Ljava/lang/Object;
.source "VideoCamcorderDeviceStatechartInitializer_Factory.java"

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
.field private final aeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;"
        }
    .end annotation
.end field

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

.field private final evCompViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
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

.field private final videoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;",
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
            "Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer_Factory;->videoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer_Factory;->evCompViewControllerProvider:Ljavax/inject/Provider;

    .line 41
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 12
    .line 1045
    new-instance v0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;

    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer_Factory;->videoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 1046
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 1048
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    iget-object v4, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 1049
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    iget-object v5, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer_Factory;->evCompViewControllerProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;-><init>(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Ljavax/inject/Provider;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V

    .line 12
    return-object v0
.end method
