.class final Lcom/android/camera/silentfeedback/SilentFeedbackService$1;
.super Ljava/lang/Object;
.source "SilentFeedbackService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/silentfeedback/SilentFeedbackService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/silentfeedback/SilentFeedbackService;

.field final synthetic val$googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/camera/silentfeedback/SilentFeedbackService;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService$1;->this$0:Lcom/android/camera/silentfeedback/SilentFeedbackService;

    iput-object p2, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService$1;->val$googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p3, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lcom/android/camera/silentfeedback/SilentFeedbackService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleAPIClient connected."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService$1;->val$googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService$1;->this$0:Lcom/android/camera/silentfeedback/SilentFeedbackService;

    iget-object v2, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService$1;->val$intent:Landroid/content/Intent;

    invoke-static {v1, v2}, Lcom/android/camera/silentfeedback/SilentFeedbackService;->access$200(Lcom/android/camera/silentfeedback/SilentFeedbackService;Landroid/content/Intent;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/feedback/Feedback;->silentSendFeedback(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/feedback/FeedbackOptions;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/android/camera/silentfeedback/SilentFeedbackService$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/silentfeedback/SilentFeedbackService$1$1;-><init>(Lcom/android/camera/silentfeedback/SilentFeedbackService$1;)V

    .line 143
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/camera/silentfeedback/SilentFeedbackService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not clean PII, no feedback sent."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService$1;->this$0:Lcom/android/camera/silentfeedback/SilentFeedbackService;

    invoke-static {v0}, Lcom/android/camera/silentfeedback/SilentFeedbackService;->access$100(Lcom/android/camera/silentfeedback/SilentFeedbackService;)V

    goto :goto_0
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method
