.class Lcom/android/camera/ui/controller/CaptureStatechart$PanoramaState;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "CaptureStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/CaptureStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanoramaState"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/CaptureStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/CaptureStatechart;)V
    .locals 1

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PanoramaState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(F)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter Panorama state"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PanoramaState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$000(Lcom/android/camera/ui/controller/CaptureStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$Mode;->PANORAMA$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMUS3KD5NMSSR2C5P2UTJ9CLRIUJRGEHKMURJJ89GN4LB94H6MUP357C______:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->setMode$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4I4QRR4CKTIILG_(I)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PanoramaState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$600(Lcom/android/camera/ui/controller/CaptureStatechart;)V

    .line 123
    invoke-static {}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set rotation to crossfade"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PanoramaState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$700(Lcom/android/camera/ui/controller/CaptureStatechart;I)V

    .line 125
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit Panorama state"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set rotation to jumpcut"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PanoramaState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    iget-object v1, p0, Lcom/android/camera/ui/controller/CaptureStatechart$PanoramaState;->this$0:Lcom/android/camera/ui/controller/CaptureStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$800(Lcom/android/camera/ui/controller/CaptureStatechart;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/controller/CaptureStatechart;->access$700(Lcom/android/camera/ui/controller/CaptureStatechart;I)V

    .line 132
    return-void
.end method

.method public exitToyBoxMode()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method
