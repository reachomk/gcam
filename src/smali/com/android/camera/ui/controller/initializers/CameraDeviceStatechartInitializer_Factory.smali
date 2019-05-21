.class public final Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer_Factory;
.super Ljava/lang/Object;
.source "CameraDeviceStatechartInitializer_Factory.java"

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

.field private final cameraDeviceStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraDeviceStatechart;",
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

.field private final settingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Settings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraDeviceStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Settings;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer_Factory;->cameraDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p5, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer_Factory;->settingsProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p6, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 47
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 13
    .line 1051
    new-instance v0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;

    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer_Factory;->cameraDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 1052
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 1054
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    iget-object v4, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1055
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/async/MainThread;

    iget-object v5, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer_Factory;->settingsProvider:Ljavax/inject/Provider;

    .line 1056
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/settings/Settings;

    iget-object v6, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer_Factory;->gservicesHelperProvider:Ljavax/inject/Provider;

    .line 1057
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;-><init>(Lcom/android/camera/ui/controller/CameraDeviceStatechart;Ljavax/inject/Provider;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/settings/Settings;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V

    .line 13
    return-object v0
.end method
