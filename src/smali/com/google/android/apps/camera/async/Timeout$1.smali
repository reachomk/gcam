.class final Lcom/google/android/apps/camera/async/Timeout$1;
.super Ljava/lang/Object;
.source "Timeout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/Timeout;-><init>(Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/async/Timeout;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/Timeout;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/android/apps/camera/async/Timeout$1;->this$0:Lcom/google/android/apps/camera/async/Timeout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/camera/async/Timeout$1;->this$0:Lcom/google/android/apps/camera/async/Timeout;

    invoke-static {v0}, Lcom/google/android/apps/camera/async/Timeout;->access$000(Lcom/google/android/apps/camera/async/Timeout;)V

    .line 28
    return-void
.end method
