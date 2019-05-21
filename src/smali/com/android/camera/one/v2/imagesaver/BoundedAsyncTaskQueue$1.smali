.class final Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$1;
.super Ljava/lang/Object;
.source "BoundedAsyncTaskQueue.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->executeTask$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQ1EDSMSOQKC5PMMKBLCLQMA92KC5PMMEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNN8QB3DDIN8S3FDTM2UL39CDLMAT1R9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1FADIN8T31C9M6AHJLEHQN4P9R55B0____(Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/util/concurrent/SettableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;

.field private synthetic val$inFlightTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

.field private synthetic val$outputFuture:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;Lcom/google/common/util/concurrent/SettableFuture;Lcom/android/camera/audio/SingleUseSoundPlayer;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$1;->this$0:Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;

    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$1;->val$outputFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$1;->val$inFlightTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$1;->val$outputFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 167
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$1;->val$inFlightTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-interface {v0}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    .line 169
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$1;->this$0:Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->access$400(Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;)V

    .line 170
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$1;->val$outputFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$1;->val$inFlightTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-interface {v0}, Lcom/android/camera/audio/SingleUseSoundPlayer;->close()V

    .line 161
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$1;->this$0:Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;->access$400(Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;)V

    .line 162
    return-void
.end method
