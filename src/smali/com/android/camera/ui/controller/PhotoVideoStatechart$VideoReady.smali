.class Lcom/android/camera/ui/controller/PhotoVideoStatechart$VideoReady;
.super Lcom/android/camera/ui/controller/PhotoVideoState;
.source "PhotoVideoStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/PhotoVideoStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoReady"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/PhotoVideoStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/PhotoVideoStatechart;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart$VideoReady;->this$0:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    invoke-direct {p0}, Lcom/android/camera/ui/controller/PhotoVideoState;-><init>()V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter Video state"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart$VideoReady;->this$0:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHFA1K6UT3FAPKM8PBFADQ62T35CDK62SJK7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_(Lcom/android/camera/ui/controller/PhotoVideoStatechart;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart$VideoReady;->this$0:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->access$300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHFA1K6UT3FAPKM8PBFADQ62T35CDK62SJK7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_(Lcom/android/camera/ui/controller/PhotoVideoStatechart;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/PhotoVideoStatechart$VideoReady;->this$0:Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->access$200(Lcom/android/camera/ui/controller/PhotoVideoStatechart;)Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/ui/modeswitch/PreviewSwipeGestureCallback;->setCoverState(Z)V

    .line 87
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/android/camera/ui/controller/PhotoVideoStatechart;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit Video state"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onStartRecording()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public togglePhotoVideoMode()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method
