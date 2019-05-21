.class public final Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;
.super Lcom/android/camera/ui/controller/CaptureStatechart;
.source "GeneratedCaptureStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;


# instance fields
.field private stateLensBlurState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statePanoramaState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statePhotoSphereState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statePhotoVideoState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private stateSlowMoState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

.field private statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/LensBlurStatechart;Lcom/android/camera/ui/controller/PanoramaStatechart;Lcom/android/camera/ui/controller/PhotoSphereStatechart;Lcom/android/camera/ui/controller/PhotoVideoStatechart;Lcom/android/camera/ui/controller/CameraFacingStatechart;Lcom/android/camera/ui/controller/HfrVideoStatechart;Lcom/android/camera/ui/controller/VideoTorchStatechart;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 31
    invoke-direct {p0}, Lcom/android/camera/ui/controller/CaptureStatechart;-><init>()V

    .line 32
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$1;-><init>(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)V

    .line 40
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    aput-object p1, v2, v4

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->stateLensBlurState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 41
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$2;-><init>(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)V

    .line 49
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    aput-object p2, v2, v4

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statePanoramaState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 50
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$3;-><init>(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)V

    .line 58
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v3, [Lcom/google/android/apps/camera/statecharts/State;

    aput-object p3, v2, v4

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statePhotoSphereState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 59
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$4;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$4;-><init>(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)V

    .line 88
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v5, [Lcom/google/android/apps/camera/statecharts/State;

    aput-object p4, v2, v4

    aput-object p5, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statePhotoVideoState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 89
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$5;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart$5;-><init>(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)V

    .line 97
    new-instance v1, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    new-array v2, v5, [Lcom/google/android/apps/camera/statecharts/State;

    aput-object p6, v2, v4

    aput-object p7, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;-><init>(Lcom/google/android/apps/camera/statecharts/State;[Lcom/google/android/apps/camera/statecharts/State;)V

    iput-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->stateSlowMoState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    .line 98
    new-instance v0, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statePhotoVideoState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;-><init>(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statePhotoVideoState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->stateLensBlurState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statePanoramaState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statePhotoSphereState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->stateSlowMoState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    return-object v0
.end method


# virtual methods
.method public final accept(Lcom/google/android/apps/camera/statecharts/StateVisitor;)V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/statecharts/StateVisitor;->visitSuperState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperState;)V

    .line 165
    return-void
.end method

.method public final clearHistory()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->clearHistory()V

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->stateLensBlurState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statePanoramaState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statePhotoSphereState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statePhotoVideoState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->stateSlowMoState:Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->clearHistory()V

    .line 175
    return-void
.end method

.method public final enter()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/camera/ui/controller/CaptureStatechart;->enter()V

    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->enter()V

    .line 154
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/camera/ui/controller/CaptureStatechart;->exit()V

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exit()V

    .line 160
    return-void
.end method

.method public final exitToyBoxMode()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->exitToyBoxMode()V

    goto :goto_0
.end method

.method public final initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9FEHNNIOJFF1MMARJL5TA6UUB2DTS48SJ1ETIN4GRFDPQ74RRCDHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLD4NL0SJ5EPKMATQFEPIN4R31F4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR7E9KM8R39DPIN6BRMD5INEBQ7E9KM8J39DPIN6LB97D662RJ4E9NMIP1FEPKMATPFATKMSP3FESTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CL1MURJKE9NMOR35E8TIILG_(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;Lcom/android/camera/ui/PreviewOverlay;Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;Landroid/view/Window;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/android/camera/ui/controller/CaptureStatechart;->initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9FEHNNIOJFF1MMARJL5TA6UUB2DTS48SJ1ETIN4GRFDPQ74RRCDHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLD4NL0SJ5EPKMATQFEPIN4R31F4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR7E9KM8R39DPIN6BRMD5INEBQ7E9KM8J39DPIN6LB97D662RJ4E9NMIP1FEPKMATPFATKMSP3FESTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CL1MURJKE9NMOR35E8TIILG_(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;Lcom/android/camera/ui/PreviewOverlay;Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;Landroid/view/Window;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;)V

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->initialize()V

    goto :goto_0
.end method

.method public final startLensBlur()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->startLensBlur()V

    goto :goto_0
.end method

.method public final startPanorama()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->startPanorama()V

    goto :goto_0
.end method

.method public final startPhotoSphere()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->startPhotoSphere()V

    goto :goto_0
.end method

.method public final startSlowMo()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;->statechartRunner:Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->getCurrentState()Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;->getState()Lcom/google/android/apps/camera/statecharts/State;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/statecharts/StateBase;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/StateBase;->startSlowMo()V

    goto :goto_0
.end method
