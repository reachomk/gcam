.class Lcom/android/camera/ui/controller/CountdownStatechart$CountingDown;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "CountdownStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/CountdownStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CountingDown"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/CountdownStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/CountdownStatechart;)V
    .locals 1

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/ui/controller/CountdownStatechart$CountingDown;->this$0:Lcom/android/camera/ui/controller/CountdownStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/controller/CountdownStatechart$CountingDown;->this$0:Lcom/android/camera/ui/controller/CountdownStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CountdownStatechart;->access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DNNARJKCHNNERIJEHGN8PB3D1GN4T1R55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJM___(Lcom/android/camera/ui/controller/CountdownStatechart;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/controller/CountdownStatechart$CountingDown;->this$0:Lcom/android/camera/ui/controller/CountdownStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CountdownStatechart;->access$100(Lcom/android/camera/ui/controller/CountdownStatechart;)Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setSwipeEnabled(Z)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/controller/CountdownStatechart$CountingDown;->this$0:Lcom/android/camera/ui/controller/CountdownStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CountdownStatechart;->access$200(Lcom/android/camera/ui/controller/CountdownStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->hide()V

    .line 41
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/controller/CountdownStatechart$CountingDown;->this$0:Lcom/android/camera/ui/controller/CountdownStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CountdownStatechart;->access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DNNARJKCHNNERIJEHGN8PB3D1GN4T1R55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJM___(Lcom/android/camera/ui/controller/CountdownStatechart;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/controller/CountdownStatechart$CountingDown;->this$0:Lcom/android/camera/ui/controller/CountdownStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CountdownStatechart;->access$100(Lcom/android/camera/ui/controller/CountdownStatechart;)Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/modeswitch/PhotoVideoModeSwitchView;->setSwipeEnabled(Z)V

    .line 47
    return-void
.end method

.method public stopCountdown()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
