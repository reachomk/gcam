.class public final Lcom/google/android/libraries/smartburst/concurrency/ResultException;
.super Ljava/lang/Exception;
.source "ResultException.java"


# instance fields
.field private final mContextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/concurrency/ResultException;->mContextList:Ljava/util/List;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/concurrency/ResultException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 45
    return-void
.end method

.method public static withContext(Ljava/lang/Throwable;Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;)Lcom/google/android/libraries/smartburst/concurrency/ResultException;
    .locals 2

    .prologue
    .line 92
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/concurrency/ResultException;->wrapIfNecessary(Ljava/lang/Throwable;)Lcom/google/android/libraries/smartburst/concurrency/ResultException;

    move-result-object v0

    .line 1053
    iget-object v1, v0, Lcom/google/android/libraries/smartburst/concurrency/ResultException;->mContextList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/ProgramStateContext;->asThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/concurrency/ResultException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 94
    return-object v0
.end method

.method public static wrapIfNecessary(Ljava/lang/Throwable;)Lcom/google/android/libraries/smartburst/concurrency/ResultException;
    .locals 1

    .prologue
    .line 75
    instance-of v0, p0, Lcom/google/android/libraries/smartburst/concurrency/ResultException;

    if-eqz v0, :cond_0

    .line 76
    check-cast p0, Lcom/google/android/libraries/smartburst/concurrency/ResultException;

    .line 78
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/libraries/smartburst/concurrency/ResultException;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/concurrency/ResultException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0
.end method
