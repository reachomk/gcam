.class public final Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;
.super Ljava/lang/Object;
.source "OptionsBarUiWirer_Factory.java"

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
.field private final activityLifeTimeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;"
        }
    .end annotation
.end field

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

.field private final flashOverrideStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/FlashOverrideStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final gridLinesModePropertyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private final hdrPlusSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/one/HdrPlusSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final hfrTorchStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoTorchStatechart;",
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

.field private final panoOrientationPropertyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
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

.field private final timerPropertyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private final video60fpsSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Video60FpsSetting;",
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

.field private final whiteBalanceSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/android/camera/ui/controller/VideoTorchStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/FlashOverrideStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/util/lifetime/ActivityLifetime;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/MainThread;",
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
            "Lcom/android/camera/one/HdrPlusSetting;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/Video60FpsSetting;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/settings/WhiteBalanceSetting;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/Observable;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->videoTorchStatechartProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p2, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->hfrTorchStatechartProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p3, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->flashOverrideStatechartProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p4, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p5, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->activityLifeTimeProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p6, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p7, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p8, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->timerPropertyProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p9, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->hdrPlusSettingProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p10, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->panoOrientationPropertyProvider:Ljavax/inject/Provider;

    .line 84
    iput-object p11, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->video60fpsSettingProvider:Ljavax/inject/Provider;

    .line 86
    iput-object p12, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->whiteBalanceSettingProvider:Ljavax/inject/Provider;

    .line 88
    iput-object p13, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->gridLinesModePropertyProvider:Ljavax/inject/Provider;

    .line 90
    iput-object p14, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 91
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 15

    .prologue
    .line 18
    .line 1095
    new-instance v0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer;

    iget-object v1, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->videoTorchStatechartProvider:Ljavax/inject/Provider;

    .line 1096
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/controller/VideoTorchStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->hfrTorchStatechartProvider:Ljavax/inject/Provider;

    .line 1097
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/VideoTorchStatechart;

    iget-object v3, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->flashOverrideStatechartProvider:Ljavax/inject/Provider;

    .line 1098
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/controller/FlashOverrideStatechart;

    iget-object v4, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->activityLifeTimeProvider:Ljavax/inject/Provider;

    .line 1100
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/util/lifetime/ActivityLifetime;

    iget-object v6, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->mainThreadProvider:Ljavax/inject/Provider;

    .line 1101
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/camera/async/MainThread;

    iget-object v7, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->resourcesProvider:Ljavax/inject/Provider;

    .line 1102
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/Resources;

    iget-object v8, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->timerPropertyProvider:Ljavax/inject/Provider;

    .line 1103
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/camera/async/Observable;

    iget-object v9, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->hdrPlusSettingProvider:Ljavax/inject/Provider;

    .line 1104
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/one/HdrPlusSetting;

    iget-object v10, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->panoOrientationPropertyProvider:Ljavax/inject/Provider;

    .line 1105
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/camera/async/Observable;

    iget-object v11, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->video60fpsSettingProvider:Ljavax/inject/Provider;

    .line 1106
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/settings/Video60FpsSetting;

    iget-object v12, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->whiteBalanceSettingProvider:Ljavax/inject/Provider;

    .line 1107
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/settings/WhiteBalanceSetting;

    iget-object v13, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->gridLinesModePropertyProvider:Ljavax/inject/Provider;

    .line 1108
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/camera/async/Observable;

    iget-object v14, p0, Lcom/android/camera/ui/wirers/OptionsBarUiWirer_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 1109
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    invoke-direct/range {v0 .. v14}, Lcom/android/camera/ui/wirers/OptionsBarUiWirer;-><init>(Lcom/android/camera/ui/controller/VideoTorchStatechart;Lcom/android/camera/ui/controller/VideoTorchStatechart;Lcom/android/camera/ui/controller/FlashOverrideStatechart;Ljavax/inject/Provider;Lcom/android/camera/util/lifetime/ActivityLifetime;Lcom/google/android/apps/camera/async/MainThread;Landroid/content/res/Resources;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/HdrPlusSetting;Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/settings/Video60FpsSetting;Lcom/android/camera/settings/WhiteBalanceSetting;Lcom/google/android/apps/camera/async/Observable;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;)V

    .line 18
    return-object v0
.end method
