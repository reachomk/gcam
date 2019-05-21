.class public Lcom/android/camera/activity/CameraImageActivity;
.super Landroid/app/Activity;
.source "CameraImageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onResume()V
    .locals 4

    .prologue
    .line 17
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 18
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/activity/CameraImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 19
    const-class v1, Lcom/android/camera/activity/main/CameraActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 20
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0}, Lcom/android/camera/activity/CameraImageActivity;->isVoiceInteraction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const-string v1, "android.intent.extra.TIMER_DURATION_SECONDS"

    const-string v2, "android.intent.extra.TIMER_DURATION_SECONDS"

    const/4 v3, 0x0

    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/activity/CameraImageActivity;->startActivity(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/activity/CameraImageActivity;->finish()V

    .line 35
    return-void
.end method
