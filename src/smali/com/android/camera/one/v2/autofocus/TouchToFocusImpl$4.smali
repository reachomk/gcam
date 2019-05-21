.class final Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl$4;
.super Ljava/lang/Object;
.source "TouchToFocusImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;->startDelayedAfReset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl$4;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl$4;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;->access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUL3FELHMGL3F8PNM6TBJ95MN0R1R55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJM___(Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignore reset request since ev is in scrolling state."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reset AF/AE."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl$4;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;->access$400(Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;)Lcom/google/android/apps/camera/async/Updatable;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/one/v2/autofocus/GlobalMeteringParameters;->create()Lcom/android/camera/one/v2/autofocus/MeteringParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl$4;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;->access$500(Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;->CONTINUOUS_PICTURE:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl$4;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUL3FELHMGL3F8PNM6TBJ95MN0R1R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGB58DNMST3IDTM6OPBI7C______(Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;)Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->reset()V

    .line 137
    return-void
.end method
