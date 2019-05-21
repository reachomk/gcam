.class Lcom/android/camera/ui/controller/CaptureStatechart$PhotoVideoState;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "CaptureStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/CaptureStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoVideoState"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/CaptureStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/CaptureStatechart;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoVideoState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoVideoState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$000(Lcom/android/camera/ui/controller/CaptureStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$Mode;->CAPTURE_OPTIONS$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMUS3KD5NMSSR2C5P2UTJ9CLRIUJRGEHKMURJJ89GN4LB94H6MUP357C______:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->setMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4I4QRR4CKTIILG_(I)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoVideoState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$100(Lcom/android/camera/ui/controller/CaptureStatechart;)Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->setEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoVideoState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$200(Lcom/android/camera/ui/controller/CaptureStatechart;)Lcom/android/camera/ui/PreviewOverlay;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PreviewOverlay;->setViewfinderGestureManagerEnabled(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoVideoState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGN0T3LE9IL6T31EHIM6Q31E9Q3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TGNAT3FCPNM6TBJ5T0MAGRFDPQ74RRCDHIN4EO_(Lcom/android/camera/ui/controller/CaptureStatechart;)Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->reset()V

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoVideoState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$400(Lcom/android/camera/ui/controller/CaptureStatechart;)V

    .line 62
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoVideoState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$200(Lcom/android/camera/ui/controller/CaptureStatechart;)Lcom/android/camera/ui/PreviewOverlay;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->setViewfinderGestureManagerEnabled(Z)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PhotoVideoState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$100(Lcom/android/camera/ui/controller/CaptureStatechart;)Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;->setEnabled(Z)V

    .line 68
    return-void
.end method

.method public startLensBlur()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public startPanorama()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public startPhotoSphere()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public startSlowMo()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method
