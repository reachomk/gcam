.class Lcom/android/camera/util/XmpUtil$1;
.super Ljava/lang/Object;
.source "XmpUtil.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/XmpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/util/GoogleHelpHelper;

.field final synthetic val$ex:Ljava/lang/Exception;

.field final synthetic val$feedbackMsgId:I


# direct methods
.method constructor <init>(Lcom/android/camera/util/GoogleHelpHelper;ILjava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/android/camera/util/XmpUtil$1;->this$0:Lcom/android/camera/util/GoogleHelpHelper;

    iput p2, p0, Lcom/android/camera/util/XmpUtil$1;->val$feedbackMsgId:I

    iput-object p3, p0, Lcom/android/camera/util/XmpUtil$1;->val$ex:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/camera/util/XmpUtil$1;->this$0:Lcom/android/camera/util/GoogleHelpHelper;

    iget v1, p0, Lcom/android/camera/util/XmpUtil$1;->val$feedbackMsgId:I

    iget-object v2, p0, Lcom/android/camera/util/XmpUtil$1;->val$ex:Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/GoogleHelpHelper;->access$000(Lcom/android/camera/util/GoogleHelpHelper;ILjava/lang/Exception;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    .line 1092
    iget-object v1, p0, Lcom/android/camera/util/XmpUtil$1;->this$0:Lcom/android/camera/util/GoogleHelpHelper;

    invoke-static {v1}, Lcom/android/camera/util/GoogleHelpHelper;->access$100(Lcom/android/camera/util/GoogleHelpHelper;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/feedback/Feedback;->startFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/feedback/FeedbackOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 1093
    new-instance v1, Lcom/android/camera/util/GoogleHelpHelper$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/util/GoogleHelpHelper$1$1;-><init>(Lcom/android/camera/util/XmpUtil$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 1100
    iget-object v0, p0, Lcom/android/camera/util/XmpUtil$1;->this$0:Lcom/android/camera/util/GoogleHelpHelper;

    invoke-static {v0}, Lcom/android/camera/util/GoogleHelpHelper;->access$100(Lcom/android/camera/util/GoogleHelpHelper;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 1101
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .prologue
    .line 1105
    invoke-static {}, Lcom/android/camera/util/GoogleHelpHelper;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Google API client connection suspended"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    return-void
.end method
