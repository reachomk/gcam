.class final Lcom/android/camera/ui/wirers/EvCompUiWirer$1;
.super Ljava/lang/Object;
.source "EvCompUiWirer.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/wirers/EvCompUiWirer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/wirers/EvCompUiWirer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/wirers/EvCompUiWirer;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer$1;->this$0:Lcom/android/camera/ui/wirers/EvCompUiWirer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 68
    check-cast p1, Ljava/lang/Boolean;

    .line 1071
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/android/camera/ui/wirers/EvCompUiWirer$1;->this$0:Lcom/android/camera/ui/wirers/EvCompUiWirer;

    invoke-static {v0}, Lcom/android/camera/ui/wirers/EvCompUiWirer;->access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBRND5P6ASJJ5T2NCGRFDLO5AQAND5P6ASHR55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UOBLEHNMCRR3ELPIUGB58DNMST3IDTM6OPBI7C______(Lcom/android/camera/ui/wirers/EvCompUiWirer;)Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->getAeLockProperty$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPFA1P6US35E9Q7IEO_()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Observable;->update(Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-void
.end method
