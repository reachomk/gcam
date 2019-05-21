.class public abstract Lcom/google/android/libraries/smartburst/utils/VoidFunction;
.super Ljava/lang/Object;
.source "VoidFunction.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/utils/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/utils/Function",
        "<TI;",
        "Lcom/google/android/libraries/smartburst/utils/Empty;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/utils/Empty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/libraries/smartburst/utils/Empty;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/utils/VoidFunction;->process(Ljava/lang/Object;)V

    .line 19
    sget-object v0, Lcom/google/android/libraries/smartburst/utils/Empty;->INSTANCE:Lcom/google/android/libraries/smartburst/utils/Empty;

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/utils/VoidFunction;->apply(Ljava/lang/Object;)Lcom/google/android/libraries/smartburst/utils/Empty;

    move-result-object v0

    return-object v0
.end method

.method public abstract process(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
