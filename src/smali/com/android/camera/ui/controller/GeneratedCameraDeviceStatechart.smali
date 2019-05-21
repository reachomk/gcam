.class public final Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;
.super Lcom/android/camera/ui/controller/CameraDeviceStatechart;
.source "GeneratedCameraDeviceStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private stateClosed:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateOpened:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>(Lcom/android/camera/util/CameraMode;Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;-><init>(Lcom/android/camera/util/CameraMode;Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V

    .line 30
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart$1;-><init>(Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;)V

    .line 38
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->stateClosed:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 39
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart$2;-><init>(Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;)V

    .line 47
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->stateOpened:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 48
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->stateClosed:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->stateOpened:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->stateClosed:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 91
    return-void
.end method

.method public final cameraClosed()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->cameraClosed()V

    goto :goto_0
.end method

.method public final cameraOpened(Lcom/android/camera/one/OneCameraCharacteristics;Ljava/lang/String;Lcom/google/android/apps/camera/async/AddOnlyLifetime;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/camera/statecharts/StateBase;->cameraOpened(Lcom/android/camera/one/OneCameraCharacteristics;Ljava/lang/String;Lcom/google/android/apps/camera/async/AddOnlyLifetime;)V

    goto :goto_0
.end method

.method public final clearHistory()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->stateClosed:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->stateOpened:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 98
    return-void
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->enter()V

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 80
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->exit()V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 86
    return-void
.end method

.method public final initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9LGMIRIKD1P6AOB47D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMAT3KD5N6ESPFADIN8T39DPJN6EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TGNAT3FCPNM6TBJ5T0MAGRFDPQ74RRCDHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3DTN6CQB75T3N6PBIEPKM6PBJ91IMOS35E8TIILG_(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/settings/Settings;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9LGMIRIKD1P6AOB47D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMAT3KD5N6ESPFADIN8T39DPJN6EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TGNAT3FCPNM6TBJ5T0MAGRFDPQ74RRCDHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3DTN6CQB75T3N6PBIEPKM6PBJ91IMOS35E8TIILG_(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/settings/Settings;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    goto :goto_0
.end method
