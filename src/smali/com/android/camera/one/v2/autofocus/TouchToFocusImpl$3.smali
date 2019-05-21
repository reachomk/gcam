.class final Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl$3;
.super Ljava/lang/Object;
.source "TouchToFocusImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Futures2$Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;->triggerFocusAndMeterAtPoint(Lcom/google/android/apps/camera/aaa/FocusPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Futures2$Function2",
        "<",
        "Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl$3;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 111
    check-cast p2, Ljava/lang/Boolean;

    .line 1114
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl$3;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUL3FELHMGL3F8PNM6TBJ95MN0R1R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGB58DNMST3IDTM6OPBI7C______(Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;)Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->getAeLockProperty$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 1119
    :goto_0
    const/4 v0, 0x0

    .line 111
    return-object v0

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl$3;->this$0:Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;

    invoke-static {v0}, Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;->access$000(Lcom/android/camera/one/v2/autofocus/TouchToFocusImpl;)V

    goto :goto_0
.end method
