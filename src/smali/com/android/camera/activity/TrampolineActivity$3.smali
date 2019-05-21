.class final Lcom/android/camera/activity/TrampolineActivity$3;
.super Ljava/lang/Object;
.source "TrampolineActivity.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/activity/TrampolineActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/activity/TrampolineActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/activity/TrampolineActivity;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/camera/activity/TrampolineActivity$3;->this$0:Lcom/android/camera/activity/TrampolineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/activity/TrampolineActivity$3;->this$0:Lcom/android/camera/activity/TrampolineActivity;

    iget-object v1, p0, Lcom/android/camera/activity/TrampolineActivity$3;->this$0:Lcom/android/camera/activity/TrampolineActivity;

    invoke-static {v1}, Lcom/android/camera/activity/TrampolineActivity;->access$200(Lcom/android/camera/activity/TrampolineActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/activity/TrampolineActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    return-void
.end method
