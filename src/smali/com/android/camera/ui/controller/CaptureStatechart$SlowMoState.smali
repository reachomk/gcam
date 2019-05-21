.class Lcom/android/camera/ui/controller/CaptureStatechart$SlowMoState;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "CaptureStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/CaptureStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlowMoState"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/CaptureStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/CaptureStatechart;)V
    .locals 1

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/camera/ui/controller/CaptureStatechart$SlowMoState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter SlowMo state"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$SlowMoState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$000(Lcom/android/camera/ui/controller/CaptureStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$Mode;->CAPTURE_OPTIONS$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMUS3KD5NMSSR2C5P2UTJ9CLRIUJRGEHKMURJJ89GN4LB94H6MUP357C______:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->setMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4I4QRR4CKTIILG_(I)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$SlowMoState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$200(Lcom/android/camera/ui/controller/CaptureStatechart;)Lcom/android/camera/ui/PreviewOverlay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->setViewfinderGestureManagerEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$SlowMoState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$400(Lcom/android/camera/ui/controller/CaptureStatechart;)V

    .line 161
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 165
    invoke-static {}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit SlowMo state"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$SlowMoState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$200(Lcom/android/camera/ui/controller/CaptureStatechart;)Lcom/android/camera/ui/PreviewOverlay;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PreviewOverlay;->setViewfinderGestureManagerEnabled(Z)V

    .line 167
    return-void
.end method

.method public exitToyBoxMode()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method
