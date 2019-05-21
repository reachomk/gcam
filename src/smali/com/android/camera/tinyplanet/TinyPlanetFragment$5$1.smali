.class final Lcom/android/camera/tinyplanet/TinyPlanetFragment$5$1;
.super Ljava/lang/Object;
.source "TinyPlanetFragment.java"

# interfaces
.implements Lcom/android/camera/storage/MediaSaver$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;


# direct methods
.method constructor <init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaSaved(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$1300$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQ6IRJPE1M62RJ5EGNL8QBEF586OOBECLQ4CSJ1CTMMARJK7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2S3G5T1M2RB5E9GK2ORKD5R6IT3P8DNMST3IDTM6OPBI7C______(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->notifyNewMedia(Landroid/net/Uri;)V

    .line 321
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$1100(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 322
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$5;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-virtual {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->dismiss()V

    .line 323
    return-void
.end method
