.class final Lcom/google/android/libraries/smartburst/utils/SparseArrays$1;
.super Ljava/util/AbstractList;
.source "SparseArrays.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/utils/SparseArrays;->keys(Landroid/util/LongSparseArray;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$array:Landroid/util/LongSparseArray;


# direct methods
.method constructor <init>(Landroid/util/LongSparseArray;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/utils/SparseArrays$1;->val$array:Landroid/util/LongSparseArray;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/utils/SparseArrays$1;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 22
    .line 2030
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/SparseArrays$1;->val$array:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 35
    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, -0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/SparseArrays$1;->val$array:Landroid/util/LongSparseArray;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 22
    .line 1044
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/SparseArrays$1;->val$array:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 1045
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/utils/SparseArrays$1;->val$array:Landroid/util/LongSparseArray;

    .line 1046
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not in the range [0,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/SparseArrays$1;->val$array:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1049
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/utils/SparseArrays$1;->val$array:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 22
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/utils/SparseArrays$1;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 56
    if-ltz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/utils/SparseArrays$1;->val$array:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/utils/SparseArrays$1;->val$array:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    return v0
.end method
