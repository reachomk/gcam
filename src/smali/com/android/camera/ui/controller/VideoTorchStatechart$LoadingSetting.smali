.class Lcom/android/camera/ui/controller/VideoTorchStatechart$LoadingSetting;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "VideoTorchStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/VideoTorchStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadingSetting"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/VideoTorchStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/VideoTorchStatechart;)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart$LoadingSetting;->this$0:Lcom/android/camera/ui/controller/VideoTorchStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([[B)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart$LoadingSetting;->this$0:Lcom/android/camera/ui/controller/VideoTorchStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoTorchStatechart;->access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHFAPKM8PBFAHNN4OR8ADQ62T35CDK62SJK7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_(Lcom/android/camera/ui/controller/VideoTorchStatechart;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart$LoadingSetting;->this$0:Lcom/android/camera/ui/controller/VideoTorchStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/VideoTorchStatechart;->access$100(Lcom/android/camera/ui/controller/VideoTorchStatechart;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart$LoadingSetting;->this$0:Lcom/android/camera/ui/controller/VideoTorchStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoTorchStatechart;->access$200(Lcom/android/camera/ui/controller/VideoTorchStatechart;)V

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart$LoadingSetting;->this$0:Lcom/android/camera/ui/controller/VideoTorchStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/VideoTorchStatechart;->access$300(Lcom/android/camera/ui/controller/VideoTorchStatechart;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoTorchStatechart$LoadingSetting;->this$0:Lcom/android/camera/ui/controller/VideoTorchStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoTorchStatechart;->access$400(Lcom/android/camera/ui/controller/VideoTorchStatechart;)V

    goto :goto_0

    .line 54
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Illegal value for video torch setting: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setOff()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public setOn()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
