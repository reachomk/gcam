.class final Lcom/android/camera/activity/TrampolineActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "TrampolineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/activity/TrampolineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/android/camera/activity/TrampolineActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Screen off received, shutting down trampoline"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/android/camera/activity/TrampolineActivity;->close()V

    .line 71
    return-void
.end method
