.class public final Lcom/android/camera/silentfeedback/CameraSilentFeedbackHandler;
.super Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;
.source "CameraSilentFeedbackHandler.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p2}, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 22
    iput-object p1, p0, Lcom/android/camera/silentfeedback/CameraSilentFeedbackHandler;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method protected final handleException(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/silentfeedback/CameraSilentFeedbackHandler;->context:Landroid/content/Context;

    const-string v1, "com.android.camera.silentfeedback.SILENT_FEEDBACK"

    invoke-static {v0, p1, v1}, Lcom/android/camera/silentfeedback/SilentFeedback;->sendSilentFeedback(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 28
    return-void
.end method
