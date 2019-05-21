.class final Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;
.super Ljava/lang/Object;
.source "BoundedAsyncTaskQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WaitingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final inFlightTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

.field private final outputFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final task:Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task",
            "<+TT;>;",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;->task:Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;

    .line 184
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;->inFlightTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    .line 185
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;->outputFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 186
    return-void
.end method

.method static synthetic access$000$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQ1EDSMSOQKC5PMMKBLCLQMA92KC5PMMEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNN8QB3DDIN8S3FDTM2UL39CDLMAT1R9HHMUR9FCTNMUPRCCKNM6RRDDLNMSBRLEHKMOBR3DTN66TBIE9IMST1FADIN8T31C9M6AHJLEHQN4P9R55666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQ2DTQMSP35CH0N6UBECDA62SRBA5QMATB54HBM2QBKD5N6EL31EDLJM___(Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;
    .locals 1

    .prologue
    .line 174
    .line 1192
    new-instance v0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;-><init>(Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;Lcom/android/camera/audio/SingleUseSoundPlayer;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 174
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;)Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;->task:Lcom/android/camera/one/v2/imagesaver/AsyncTaskQueue$Task;

    return-object v0
.end method

.method static synthetic access$200$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQ2DTQMSP35CH0N6UBECDA62SRBA5QMATB54HBM2QBKD5N6EL31EDLJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLMM2RJ1CTIMQPBEEGNN8QB3DDIN8S3FDTM2UL39CDLMAT1R(Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;)Lcom/android/camera/audio/SingleUseSoundPlayer;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;->inFlightTicket$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NMIRB1CTIMQOBEC5JMARB5DPQ2UT39CDLMAT3GDTNMOBQKD5HMMPBK7C______:Lcom/android/camera/audio/SingleUseSoundPlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BoundedAsyncTaskQueue$WaitingTask;->outputFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method
