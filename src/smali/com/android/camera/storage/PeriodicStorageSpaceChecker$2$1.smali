.class final Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2$1;
.super Ljava/lang/Object;
.source "PeriodicStorageSpaceChecker.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2;


# direct methods
.method constructor <init>(Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2$1;->this$1:Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 101
    check-cast p1, Ljava/lang/Long;

    .line 1104
    iget-object v0, p0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2$1;->this$1:Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2;

    iget-object v0, v0, Lcom/android/camera/storage/PeriodicStorageSpaceChecker$2;->val$listener:Lcom/android/camera/storage/PeriodicStorageSpaceChecker$Listener;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/camera/storage/PeriodicStorageSpaceChecker$Listener;->onDataUpdate(J)V

    .line 101
    return-void
.end method
