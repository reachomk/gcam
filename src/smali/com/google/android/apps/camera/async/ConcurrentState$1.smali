.class final Lcom/google/android/apps/camera/async/ConcurrentState$1;
.super Ljava/lang/Object;
.source "ConcurrentState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/async/ConcurrentState;

.field private synthetic val$newValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/ConcurrentState;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/android/apps/camera/async/ConcurrentState$1;->this$0:Lcom/google/android/apps/camera/async/ConcurrentState;

    iput-object p2, p0, Lcom/google/android/apps/camera/async/ConcurrentState$1;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ConcurrentState$1;->this$0:Lcom/google/android/apps/camera/async/ConcurrentState;

    iget-object v1, p0, Lcom/google/android/apps/camera/async/ConcurrentState$1;->val$newValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->access$002(Lcom/google/android/apps/camera/async/ConcurrentState;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ConcurrentState$1;->this$0:Lcom/google/android/apps/camera/async/ConcurrentState;

    invoke-static {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->access$100(Lcom/google/android/apps/camera/async/ConcurrentState;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/async/Updatable;

    .line 62
    iget-object v2, p0, Lcom/google/android/apps/camera/async/ConcurrentState$1;->val$newValue:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method
