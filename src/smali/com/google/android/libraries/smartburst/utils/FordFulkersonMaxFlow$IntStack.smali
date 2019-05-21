.class final Lcom/google/android/libraries/smartburst/utils/FordFulkersonMaxFlow$IntStack;
.super Ljava/lang/Object;
.source "FordFulkersonMaxFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/utils/FordFulkersonMaxFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntStack"
.end annotation


# instance fields
.field private height:I

.field private final stack:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/utils/FordFulkersonMaxFlow$IntStack;->stack:[I

    .line 152
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/smartburst/utils/FordFulkersonMaxFlow$IntStack;->height:I

    .line 170
    return-void
.end method

.method public final get(I)I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/FordFulkersonMaxFlow$IntStack;->stack:[I

    aget v0, v0, p1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/FordFulkersonMaxFlow$IntStack;->height:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pop()I
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/FordFulkersonMaxFlow$IntStack;->height:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/utils/FordFulkersonMaxFlow$IntStack;->height:I

    .line 161
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/FordFulkersonMaxFlow$IntStack;->stack:[I

    iget v1, p0, Lcom/google/android/libraries/smartburst/utils/FordFulkersonMaxFlow$IntStack;->height:I

    aget v0, v0, v1

    return v0
.end method

.method public final push(I)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/FordFulkersonMaxFlow$IntStack;->stack:[I

    iget v1, p0, Lcom/google/android/libraries/smartburst/utils/FordFulkersonMaxFlow$IntStack;->height:I

    aput p1, v0, v1

    .line 156
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/FordFulkersonMaxFlow$IntStack;->height:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/utils/FordFulkersonMaxFlow$IntStack;->height:I

    .line 157
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/FordFulkersonMaxFlow$IntStack;->height:I

    return v0
.end method
