.class final Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase$1;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandlerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;

.field private synthetic val$ex:Ljava/lang/Throwable;

.field private synthetic val$thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase$1;->this$0:Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;

    iput-object p2, p0, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase$1;->val$thread:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase$1;->val$ex:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase$1;->this$0:Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;

    iget-object v1, p0, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase$1;->val$thread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase$1;->val$ex:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;->access$000(Lcom/android/camera/silentfeedback/UncaughtExceptionHandlerBase;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method
