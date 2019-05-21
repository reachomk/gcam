.class final Lcom/android/camera/silentfeedback/SilentFeedbackService$2;
.super Ljava/lang/Object;
.source "SilentFeedbackService.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/silentfeedback/SilentFeedbackService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/silentfeedback/SilentFeedbackService;


# direct methods
.method constructor <init>(Lcom/android/camera/silentfeedback/SilentFeedbackService;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService$2;->this$0:Lcom/android/camera/silentfeedback/SilentFeedbackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    .prologue
    .line 169
    invoke-static {}, Lcom/android/camera/silentfeedback/SilentFeedbackService;->access$000()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x4a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "GoogleApiClient silent feedback connection failed with result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/silentfeedback/SilentFeedbackService$2;->this$0:Lcom/android/camera/silentfeedback/SilentFeedbackService;

    invoke-static {v0}, Lcom/android/camera/silentfeedback/SilentFeedbackService;->access$100(Lcom/android/camera/silentfeedback/SilentFeedbackService;)V

    .line 173
    return-void
.end method
