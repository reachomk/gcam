.class final Lcom/google/android/apps/camera/async/ListObservable$CallbackSet$Callback$1;
.super Ljava/lang/Object;
.source "ListObservable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/ListObservable$CallbackSet$Callback;->update(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$2:Lcom/google/android/apps/camera/async/ListObservable$CallbackSet$Callback;

.field private synthetic val$latestValues:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/ListObservable$CallbackSet$Callback;Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet$Callback$1;->this$2:Lcom/google/android/apps/camera/async/ListObservable$CallbackSet$Callback;

    iput-object p2, p0, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet$Callback$1;->val$latestValues:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet$Callback$1;->this$2:Lcom/google/android/apps/camera/async/ListObservable$CallbackSet$Callback;

    iget-object v0, v0, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet$Callback;->this$1:Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;

    invoke-static {v0}, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;->access$400(Lcom/google/android/apps/camera/async/ListObservable$CallbackSet;)Lcom/google/android/apps/camera/async/Updatable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/camera/async/ListObservable$CallbackSet$Callback$1;->val$latestValues:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 91
    return-void
.end method
