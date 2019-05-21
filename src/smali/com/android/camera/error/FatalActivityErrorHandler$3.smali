.class final Lcom/android/camera/error/FatalActivityErrorHandler$3;
.super Ljava/lang/Object;
.source "FatalActivityErrorHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/error/FatalActivityErrorHandler;->showError(Landroid/app/Activity;IILjava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/error/FatalActivityErrorHandler;

.field private synthetic val$activity:Landroid/app/Activity;

.field private synthetic val$ex:Ljava/lang/Exception;

.field private synthetic val$feedbackMsgId:I


# direct methods
.method constructor <init>(Lcom/android/camera/error/FatalActivityErrorHandler;Landroid/app/Activity;ILjava/lang/Exception;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/camera/error/FatalActivityErrorHandler$3;->this$0:Lcom/android/camera/error/FatalActivityErrorHandler;

    iput-object p2, p0, Lcom/android/camera/error/FatalActivityErrorHandler$3;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/android/camera/error/FatalActivityErrorHandler$3;->val$feedbackMsgId:I

    iput-object p4, p0, Lcom/android/camera/error/FatalActivityErrorHandler$3;->val$ex:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 214
    new-instance v0, Lcom/android/camera/util/GoogleHelpHelper;

    iget-object v1, p0, Lcom/android/camera/error/FatalActivityErrorHandler$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/camera/util/GoogleHelpHelper;-><init>(Landroid/app/Activity;)V

    iget v1, p0, Lcom/android/camera/error/FatalActivityErrorHandler$3;->val$feedbackMsgId:I

    iget-object v2, p0, Lcom/android/camera/error/FatalActivityErrorHandler$3;->val$ex:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/util/GoogleHelpHelper;->sendGoogleFeedback(ILjava/lang/Exception;)V

    .line 215
    iget-object v0, p0, Lcom/android/camera/error/FatalActivityErrorHandler$3;->this$0:Lcom/android/camera/error/FatalActivityErrorHandler;

    invoke-static {v0}, Lcom/android/camera/error/FatalActivityErrorHandler;->access$200(Lcom/android/camera/error/FatalActivityErrorHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/camera/error/FatalActivityErrorHandler$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 218
    :cond_0
    return-void
.end method
