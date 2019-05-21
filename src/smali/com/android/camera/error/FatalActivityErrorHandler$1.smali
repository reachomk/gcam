.class final Lcom/android/camera/error/FatalActivityErrorHandler$1;
.super Ljava/lang/Object;
.source "FatalActivityErrorHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/error/FatalActivityErrorHandler;->showError(Lcom/android/camera/error/FatalErrorHandler$Reason;Ljava/lang/Exception;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/error/FatalActivityErrorHandler;

.field private synthetic val$activity:Landroid/app/Activity;

.field private synthetic val$exception:Ljava/lang/Exception;

.field private synthetic val$ignoreVisibility:Z

.field private synthetic val$reason:Lcom/android/camera/error/FatalErrorHandler$Reason;


# direct methods
.method constructor <init>(Lcom/android/camera/error/FatalActivityErrorHandler;ZLandroid/app/Activity;Lcom/android/camera/error/FatalErrorHandler$Reason;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/camera/error/FatalActivityErrorHandler$1;->this$0:Lcom/android/camera/error/FatalActivityErrorHandler;

    iput-boolean p2, p0, Lcom/android/camera/error/FatalActivityErrorHandler$1;->val$ignoreVisibility:Z

    iput-object p3, p0, Lcom/android/camera/error/FatalActivityErrorHandler$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/camera/error/FatalActivityErrorHandler$1;->val$reason:Lcom/android/camera/error/FatalErrorHandler$Reason;

    iput-object p5, p0, Lcom/android/camera/error/FatalActivityErrorHandler$1;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/camera/error/FatalActivityErrorHandler$1;->val$ignoreVisibility:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/error/FatalActivityErrorHandler$1;->this$0:Lcom/android/camera/error/FatalActivityErrorHandler;

    invoke-static {v0}, Lcom/android/camera/error/FatalActivityErrorHandler;->access$000(Lcom/android/camera/error/FatalActivityErrorHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/camera/error/FatalActivityErrorHandler$1;->this$0:Lcom/android/camera/error/FatalActivityErrorHandler;

    iget-object v1, p0, Lcom/android/camera/error/FatalActivityErrorHandler$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/camera/error/FatalActivityErrorHandler$1;->val$reason:Lcom/android/camera/error/FatalErrorHandler$Reason;

    invoke-virtual {v2}, Lcom/android/camera/error/FatalErrorHandler$Reason;->getDialogMsgId()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/error/FatalActivityErrorHandler$1;->val$reason:Lcom/android/camera/error/FatalErrorHandler$Reason;

    invoke-virtual {v3}, Lcom/android/camera/error/FatalErrorHandler$Reason;->getFeedbackMsgId()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/error/FatalActivityErrorHandler$1;->val$exception:Ljava/lang/Exception;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/error/FatalActivityErrorHandler;->access$100(Lcom/android/camera/error/FatalActivityErrorHandler;Landroid/app/Activity;IILjava/lang/Exception;)V

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/camera/error/FatalActivityErrorHandler$1;->this$0:Lcom/android/camera/error/FatalActivityErrorHandler;

    invoke-static {v0}, Lcom/android/camera/error/FatalActivityErrorHandler;->access$200(Lcom/android/camera/error/FatalActivityErrorHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/camera/error/FatalActivityErrorHandler$1;->this$0:Lcom/android/camera/error/FatalActivityErrorHandler;

    const-string v1, "Activity received error, but was not running. Executing finish()"

    invoke-static {v0, v1}, Lcom/android/camera/error/FatalActivityErrorHandler;->access$300(Lcom/android/camera/error/FatalActivityErrorHandler;Ljava/lang/String;)V

    goto :goto_0
.end method
