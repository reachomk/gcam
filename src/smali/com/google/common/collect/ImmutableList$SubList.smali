.class final Lcom/google/common/collect/ImmutableList$SubList;
.super Lcom/google/common/collect/ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient length:I

.field private transient offset:I

.field private synthetic this$0:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;II)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$SubList;->this$0:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 391
    iput p2, p0, Lcom/google/common/collect/ImmutableList$SubList;->offset:I

    .line 392
    iput p3, p0, Lcom/google/common/collect/ImmutableList$SubList;->length:I

    .line 393
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 402
    iget v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->length:I

    invoke-static {p1, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkElementIndex(II)I

    .line 403
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->this$0:Lcom/google/common/collect/ImmutableList;

    iget v1, p0, Lcom/google/common/collect/ImmutableList$SubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->length:I

    return v0
.end method

.method public final subList(II)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 408
    iget v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->length:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkPositionIndexes(III)V

    .line 409
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->this$0:Lcom/google/common/collect/ImmutableList;

    iget v1, p0, Lcom/google/common/collect/ImmutableList$SubList;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/common/collect/ImmutableList$SubList;->offset:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableList$SubList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
