.class final Lcom/android/camera/one/v2/preview/SimplePreviewModule$2;
.super Ljava/lang/Object;
.source "SimplePreviewModule.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/preview/SimplePreviewModule;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$runPreview:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule$2;->val$runPreview:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/one/v2/preview/SimplePreviewModule$2;->val$runPreview:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 70
    return-void
.end method
