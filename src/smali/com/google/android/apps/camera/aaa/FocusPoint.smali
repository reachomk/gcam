.class public final Lcom/google/android/apps/camera/aaa/FocusPoint;
.super Ljava/lang/Object;
.source "FocusPoint.java"


# instance fields
.field private final lockFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final point:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/graphics/PointF;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/apps/camera/aaa/FocusPoint;->point:Landroid/graphics/PointF;

    .line 65
    iput-object p2, p0, Lcom/google/android/apps/camera/aaa/FocusPoint;->lockFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 66
    return-void
.end method

.method public static at(FF)Lcom/google/android/apps/camera/aaa/FocusPoint;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/google/android/apps/camera/aaa/FocusPoint;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/camera/aaa/FocusPoint;-><init>(Landroid/graphics/PointF;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method

.method public static at(Landroid/graphics/PointF;)Lcom/google/android/apps/camera/aaa/FocusPoint;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/apps/camera/aaa/FocusPoint;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/camera/aaa/FocusPoint;-><init>(Landroid/graphics/PointF;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method


# virtual methods
.method public final lockFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/camera/aaa/FocusPoint;->lockFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public final point()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/apps/camera/aaa/FocusPoint;->point:Landroid/graphics/PointF;

    return-object v0
.end method
