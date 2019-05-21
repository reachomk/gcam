.class final Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$1;
.super Ljava/lang/Object;
.source "TouchToFocusSmartImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->triggerFocusAndMeterAtPoint(Lcom/google/android/apps/camera/aaa/FocusPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$1;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 99
    check-cast p1, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;

    .line 1102
    invoke-static {}, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;->afConvergeFrameNumber:J

    iget-wide v4, p1, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;->aeModeConvergeFrameNumber:J

    iget-wide v6, p1, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;->aeStateConvergeFrameNumber:J

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v8, 0x77

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "aeAfScanResult afConverge="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aeModeConverge="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aeStateConverge="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl$1;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUL3FELHMGL3F8PNM6TBJADMM2SJK95MN0R1R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGB58DNMST3IDTM6OPBI7C______(Lcom/android/camera/one/v2/autofocus/TouchToFocusSmartImpl;)Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->getAeLockProperty$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 99
    return-void
.end method
