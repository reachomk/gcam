.class final Lcom/android/camera/error/FatalErrorBroadcaster$1;
.super Ljava/lang/Object;
.source "FatalErrorBroadcaster.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/error/FatalErrorBroadcaster;->addFatalErrorHandler(Lcom/android/camera/error/FatalErrorHandler;)Lcom/google/android/apps/camera/async/SafeCloseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/error/FatalErrorBroadcaster;

.field private synthetic val$fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/error/FatalErrorBroadcaster;Lcom/android/camera/error/FatalErrorHandler;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/error/FatalErrorBroadcaster$1;->this$0:Lcom/android/camera/error/FatalErrorBroadcaster;

    iput-object p2, p0, Lcom/android/camera/error/FatalErrorBroadcaster$1;->val$fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/error/FatalErrorBroadcaster$1;->this$0:Lcom/android/camera/error/FatalErrorBroadcaster;

    invoke-static {v0}, Lcom/android/camera/error/FatalErrorBroadcaster;->access$000(Lcom/android/camera/error/FatalErrorBroadcaster;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/error/FatalErrorBroadcaster$1;->val$fatalErrorHandler:Lcom/android/camera/error/FatalErrorHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method
