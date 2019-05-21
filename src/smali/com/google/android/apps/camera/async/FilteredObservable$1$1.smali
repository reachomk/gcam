.class final Lcom/google/android/apps/camera/async/FilteredObservable$1$1;
.super Ljava/lang/Object;
.source "FilteredObservable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/camera/async/FilteredObservable$1;->update(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/google/android/apps/camera/async/FilteredObservable$1;

.field private synthetic val$newValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/async/FilteredObservable$1;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/apps/camera/async/FilteredObservable$1$1;->this$1:Lcom/google/android/apps/camera/async/FilteredObservable$1;

    iput-object p2, p0, Lcom/google/android/apps/camera/async/FilteredObservable$1$1;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/camera/async/FilteredObservable$1$1;->this$1:Lcom/google/android/apps/camera/async/FilteredObservable$1;

    iget-object v0, v0, Lcom/google/android/apps/camera/async/FilteredObservable$1;->val$callback:Lcom/google/android/apps/camera/async/Updatable;

    iget-object v1, p0, Lcom/google/android/apps/camera/async/FilteredObservable$1$1;->val$newValue:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 44
    return-void
.end method
