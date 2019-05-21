.class final Lcom/android/camera/activity/TrampolineActivity$1;
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


# instance fields
.field private synthetic this$0:Lcom/android/camera/activity/TrampolineActivity;


# direct methods
.method constructor <init>(Lcom/android/camera/activity/TrampolineActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/camera/activity/TrampolineActivity$1;->this$0:Lcom/android/camera/activity/TrampolineActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/activity/TrampolineActivity$1;->this$0:Lcom/android/camera/activity/TrampolineActivity;

    invoke-static {v0, p1}, Lcom/android/camera/activity/TrampolineActivity;->access$000(Lcom/android/camera/activity/TrampolineActivity;Landroid/content/Context;)V

    .line 62
    return-void
.end method
