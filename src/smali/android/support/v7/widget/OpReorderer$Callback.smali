.class Landroid/support/v7/widget/OpReorderer$Callback;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/OpReorderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# instance fields
.field final mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field final mDisableRecycler:Z

.field private mExistingUpdateTypes:I

.field final mOpReorderer:Landroid/support/v7/widget/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;)V
    .locals 1

    .prologue
    .line 2073
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/OpReorderer$Callback;-><init>(Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;Z)V

    .line 2074
    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3056
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    .line 3058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPendingUpdates:Ljava/util/ArrayList;

    .line 3060
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    .line 3070
    iput v2, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mExistingUpdateTypes:I

    .line 3077
    iput-object p1, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 3078
    iput-boolean v2, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mDisableRecycler:Z

    .line 3079
    new-instance v0, Landroid/support/v7/widget/OpReorderer;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/OpReorderer;-><init>(Landroid/support/v7/widget/OpReorderer$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mOpReorderer:Landroid/support/v7/widget/OpReorderer;

    .line 3080
    return-void
.end method

.method private applyRemove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5135
    iget v7, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 5137
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v4, v0, v3

    .line 5138
    const/4 v5, -0x1

    .line 5139
    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v6, v2

    :goto_0
    if-ge v3, v4, :cond_3

    .line 5141
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5142
    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Landroid/support/v7/widget/OpReorderer$Callback;->canFindInPreLayout(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5149
    :cond_0
    if-nez v5, :cond_7

    .line 5152
    invoke-virtual {p0, v8, v7, v6, v9}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 5153
    invoke-direct {p0, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    move v0, v1

    :goto_1
    move v5, v1

    .line 5169
    :goto_2
    if-eqz v0, :cond_2

    .line 5170
    sub-int v0, v3, v6

    .line 5171
    sub-int v3, v4, v6

    move v4, v1

    .line 5139
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v6, v4

    move v4, v3

    move v3, v0

    goto :goto_0

    .line 5160
    :cond_1
    if-ne v5, v1, :cond_6

    .line 5163
    invoke-virtual {p0, v8, v7, v6, v9}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 5164
    invoke-direct {p0, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    move v0, v1

    :goto_4
    move v5, v2

    .line 5167
    goto :goto_2

    .line 5174
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v10, v3

    move v3, v4

    move v4, v0

    move v0, v10

    goto :goto_3

    .line 5177
    :cond_3
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v6, v0, :cond_4

    .line 5178
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 5179
    invoke-virtual {p0, v8, v7, v6, v9}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 5181
    :cond_4
    if-nez v5, :cond_5

    .line 5182
    invoke-direct {p0, p1}, Landroid/support/v7/widget/OpReorderer$Callback;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 5186
    :goto_5
    return-void

    .line 5184
    :cond_5
    invoke-direct {p0, p1}, Landroid/support/v7/widget/OpReorderer$Callback;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method private applyUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 5189
    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 5191
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int v6, v0, v3

    .line 5192
    const/4 v0, -0x1

    .line 5193
    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v5, v0

    move v0, v1

    :goto_0
    if-ge v3, v6, :cond_4

    .line 5194
    iget-object v7, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->findViewHolder(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 5195
    if-nez v7, :cond_0

    invoke-direct {p0, v3}, Landroid/support/v7/widget/OpReorderer$Callback;->canFindInPreLayout(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5196
    :cond_0
    if-nez v5, :cond_1

    .line 5197
    iget-object v5, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v8, v2, v0, v5}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 5199
    invoke-direct {p0, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    move v0, v1

    move v2, v3

    :cond_1
    move v5, v2

    move v2, v0

    move v0, v4

    .line 5214
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 5193
    add-int/lit8 v3, v3, 0x1

    move v9, v0

    move v0, v2

    move v2, v5

    move v5, v9

    goto :goto_0

    .line 5205
    :cond_2
    if-ne v5, v4, :cond_3

    .line 5206
    iget-object v5, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v8, v2, v0, v5}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 5208
    invoke-direct {p0, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    move v0, v1

    move v2, v3

    :cond_3
    move v5, v2

    move v2, v0

    move v0, v1

    .line 5212
    goto :goto_1

    .line 5216
    :cond_4
    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v0, v1, :cond_5

    .line 5217
    iget-object v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 5218
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 5219
    invoke-virtual {p0, v8, v2, v0, v1}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 5221
    :cond_5
    if-nez v5, :cond_6

    .line 5222
    invoke-direct {p0, p1}, Landroid/support/v7/widget/OpReorderer$Callback;->dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 5226
    :goto_2
    return-void

    .line 5224
    :cond_6
    invoke-direct {p0, p1}, Landroid/support/v7/widget/OpReorderer$Callback;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_2
.end method

.method private canFindInPreLayout(I)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5412
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 5413
    :goto_0
    if-ge v3, v4, :cond_3

    .line 5414
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 5415
    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 5416
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v0, v5}, Landroid/support/v7/widget/OpReorderer$Callback;->findPositionOffset(II)I

    move-result v0

    if-ne v0, p1, :cond_2

    move v0, v1

    .line 5429
    :goto_1
    return v0

    .line 5419
    :cond_0
    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v5, v1, :cond_2

    .line 5421
    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v5, v6

    .line 5422
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    :goto_2
    if-ge v0, v5, :cond_2

    .line 5423
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v0, v6}, Landroid/support/v7/widget/OpReorderer$Callback;->findPositionOffset(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    move v0, v1

    .line 5424
    goto :goto_1

    .line 5422
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5413
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 5429
    goto :goto_1
.end method

.method private dispatchAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5232
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    .line 5233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5246
    :cond_1
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/OpReorderer$Callback;->updatePositionWithPostponed(II)I

    move-result v4

    .line 5251
    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 5253
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 5261
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "op should be remove or update."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    move v0, v1

    :goto_0
    move v5, v1

    move v6, v4

    move v4, v3

    move v3, v1

    .line 5263
    :goto_1
    iget v7, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v3, v7, :cond_6

    .line 5264
    iget v7, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v8, v0, v3

    add-int/2addr v7, v8

    .line 5265
    iget v8, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v7, v8}, Landroid/support/v7/widget/OpReorderer$Callback;->updatePositionWithPostponed(II)I

    move-result v8

    .line 5270
    iget v7, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v7, :pswitch_data_1

    :pswitch_2
    move v7, v2

    .line 5278
    :goto_2
    if-eqz v7, :cond_4

    .line 5279
    add-int/lit8 v5, v5, 0x1

    .line 5263
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_3
    move v0, v2

    .line 5259
    goto :goto_0

    .line 5272
    :pswitch_4
    add-int/lit8 v7, v6, 0x1

    if-ne v8, v7, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, v2

    goto :goto_2

    .line 5275
    :pswitch_5
    if-ne v8, v6, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    move v7, v2

    goto :goto_2

    .line 5282
    :cond_4
    iget v7, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    iget-object v9, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v7, v6, v5, v9}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v6

    .line 5286
    invoke-virtual {p0, v6, v4}, Landroid/support/v7/widget/OpReorderer$Callback;->dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V

    .line 5287
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 5288
    iget v6, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    .line 5289
    add-int/2addr v4, v5

    :cond_5
    move v5, v1

    move v6, v8

    .line 5292
    goto :goto_3

    .line 5295
    :cond_6
    iget-object v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 5296
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 5297
    if-lez v5, :cond_7

    .line 5298
    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, v1, v6, v5, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v0

    .line 5302
    invoke-virtual {p0, v0, v4}, Landroid/support/v7/widget/OpReorderer$Callback;->dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V

    .line 5303
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 5313
    :cond_7
    return-void

    .line 5253
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 5270
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 4

    .prologue
    .line 5440
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5441
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 5456
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown update op type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5443
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->offsetPositionsForAdd(II)V

    .line 5454
    :goto_0
    return-void

    .line 5446
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->offsetPositionsForMove(II)V

    goto :goto_0

    .line 5449
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    goto :goto_0

    .line 5453
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    .line 5441
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updatePositionWithPostponed(II)I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 5331
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5332
    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v1, p1

    :goto_0
    if-ltz v4, :cond_e

    .line 5333
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 5334
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v7, :cond_9

    .line 5336
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v3, :cond_1

    .line 5337
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 5338
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 5343
    :goto_1
    if-lt v1, v3, :cond_6

    if-gt v1, v2, :cond_6

    .line 5345
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v2, :cond_3

    .line 5346
    if-ne p2, v5, :cond_2

    .line 5347
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 5352
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    .line 5332
    :goto_3
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    .line 5340
    :cond_1
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 5341
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_1

    .line 5348
    :cond_2
    if-ne p2, v6, :cond_0

    .line 5349
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_2

    .line 5354
    :cond_3
    if-ne p2, v5, :cond_5

    .line 5355
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 5360
    :cond_4
    :goto_4
    add-int/lit8 v0, v1, -0x1

    goto :goto_3

    .line 5356
    :cond_5
    if-ne p2, v6, :cond_4

    .line 5357
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4

    .line 5362
    :cond_6
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v1, v2, :cond_8

    .line 5364
    if-ne p2, v5, :cond_7

    .line 5365
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 5366
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    move v0, v1

    goto :goto_3

    .line 5367
    :cond_7
    if-ne p2, v6, :cond_8

    .line 5368
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 5369
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_8
    move v0, v1

    .line 5372
    goto :goto_3

    .line 5373
    :cond_9
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, v1, :cond_b

    .line 5374
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v5, :cond_a

    .line 5375
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int v0, v1, v0

    goto :goto_3

    .line 5376
    :cond_a
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v2, v6, :cond_d

    .line 5377
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v0, v1

    goto :goto_3

    .line 5380
    :cond_b
    if-ne p2, v5, :cond_c

    .line 5381
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    move v0, v1

    goto :goto_3

    .line 5382
    :cond_c
    if-ne p2, v6, :cond_d

    .line 5383
    iget v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_d
    move v0, v1

    goto :goto_3

    .line 5396
    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_5
    if-ltz v2, :cond_12

    .line 5397
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 5398
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v3, v7, :cond_11

    .line 5399
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v3, v4, :cond_f

    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gez v3, :cond_10

    .line 5400
    :cond_f
    iget-object v3, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5401
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 5396
    :cond_10
    :goto_6
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_5

    .line 5403
    :cond_11
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v3, :cond_10

    .line 5404
    iget-object v3, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5405
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_6

    .line 5408
    :cond_12
    return v1
.end method


# virtual methods
.method public applyPendingUpdatesToPosition(I)I
    .locals 6

    .prologue
    .line 5589
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5590
    const/4 v0, 0x0

    move v2, v0

    move v1, p1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 5591
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 5592
    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    sparse-switch v4, :sswitch_data_0

    .line 5590
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 5594
    :sswitch_0
    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, v1, :cond_0

    .line 5595
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v0

    goto :goto_1

    .line 5599
    :sswitch_1
    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v4, v1, :cond_0

    .line 5600
    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v4, v5

    .line 5601
    if-le v4, v1, :cond_2

    .line 5602
    const/4 v1, -0x1

    .line 5621
    :cond_1
    return v1

    .line 5604
    :cond_2
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v0

    .line 5605
    goto :goto_1

    .line 5608
    :sswitch_2
    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v4, v1, :cond_3

    .line 5609
    iget v1, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_1

    .line 5611
    :cond_3
    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v4, v1, :cond_4

    .line 5612
    add-int/lit8 v1, v1, -0x1

    .line 5614
    :cond_4
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v0, v1, :cond_0

    .line 5615
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5592
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method consumePostponedUpdates()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 5120
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 5121
    :goto_0
    if-ge v1, v3, :cond_0

    .line 5122
    iget-object v4, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 5121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5124
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 5125
    iput v2, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mExistingUpdateTypes:I

    .line 5126
    return-void
.end method

.method consumeUpdatesInOnePass()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 5558
    invoke-virtual {p0}, Landroid/support/v7/widget/OpReorderer$Callback;->consumePostponedUpdates()V

    .line 5559
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 5560
    :goto_0
    if-ge v1, v3, :cond_0

    .line 5561
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 5562
    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 5560
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5564
    :pswitch_1
    iget-object v4, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 5565
    iget-object v4, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v4, v5, v0}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->offsetPositionsForAdd(II)V

    goto :goto_1

    .line 5568
    :pswitch_2
    iget-object v4, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 5569
    iget-object v4, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v4, v5, v0}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_1

    .line 5572
    :pswitch_3
    iget-object v4, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 5573
    iget-object v4, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v0}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_1

    .line 5576
    :pswitch_4
    iget-object v4, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->onDispatchSecondPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 5577
    iget-object v4, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget v5, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v4, v5, v0}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->offsetPositionsForMove(II)V

    goto :goto_1

    .line 5584
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 5585
    iput v2, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mExistingUpdateTypes:I

    .line 5586
    return-void

    .line 5562
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method dispatchFirstPassAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V
    .locals 3

    .prologue
    .line 5316
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->onDispatchFirstPass(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 5317
    iget v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 5325
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5319
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, p2, v1}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->offsetPositionsForRemovingInvisible(II)V

    .line 5323
    :goto_0
    return-void

    .line 5322
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mCallback$9HGMSP3IDTKM8BRJELO70RRIEGNNCDPFETKM8PR5EGNK2P31E1Q6ASI8CLM70PBI4H1M2R3CC9GM6QPR:Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget v1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v2, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, p2, v1, v2}, Landroid/support/v7/widget/Toolbar$ExpandedActionViewMenuPresenter;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_0

    .line 5317
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method findPositionOffset(I)I
    .locals 1

    .prologue
    .line 5469
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->findPositionOffset(II)I

    move-result v0

    return v0
.end method

.method findPositionOffset(II)I
    .locals 5

    .prologue
    .line 5473
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, p1

    .line 5474
    :goto_0
    if-ge p2, v2, :cond_4

    .line 5475
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 5476
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 5477
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v1, :cond_1

    .line 5478
    iget v1, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 5474
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 5480
    :cond_1
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge v3, v1, :cond_2

    .line 5481
    add-int/lit8 v1, v1, -0x1

    .line 5483
    :cond_2
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v0, v1, :cond_0

    .line 5484
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5487
    :cond_3
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, v1, :cond_0

    .line 5488
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 5489
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_5

    .line 5490
    const/4 v1, -0x1

    .line 5498
    :cond_4
    return v1

    .line 5492
    :cond_5
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v1, v0

    goto :goto_1

    .line 5493
    :cond_6
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5494
    iget v0, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method hasAnyUpdateTypes(I)Z
    .locals 1

    .prologue
    .line 5465
    and-int/lit8 v0, p1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasPendingUpdates()Z
    .locals 1

    .prologue
    .line 5461
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasUpdates()Z
    .locals 1

    .prologue
    .line 5625
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 1729
    if-nez v0, :cond_0

    .line 1730
    new-instance v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    .line 1737
    :goto_0
    return-object v0

    .line 1732
    :cond_0
    iput p1, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 1733
    iput p2, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 1734
    iput p3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 1735
    iput-object p4, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    goto :goto_0
.end method

.method preProcess()V
    .locals 4

    .prologue
    .line 3094
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mOpReorderer:Landroid/support/v7/widget/OpReorderer;

    iget-object v1, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/OpReorderer;->reorderOps(Ljava/util/List;)V

    .line 3095
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3096
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 3097
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 3098
    iget v3, v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v3, :pswitch_data_0

    .line 3096
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3433
    :pswitch_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 3103
    :pswitch_2
    invoke-direct {p0, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->applyRemove(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 3106
    :pswitch_3
    invoke-direct {p0, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->applyUpdate(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 4131
    :pswitch_4
    invoke-direct {p0, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->postponeAndUpdateViewHolders(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_1

    .line 3116
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3117
    return-void

    .line 3098
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    .locals 1

    .prologue
    .line 1742
    iget-boolean v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mDisableRecycler:Z

    if-nez v0, :cond_0

    .line 1743
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 1744
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mUpdateOpPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1746
    :cond_0
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5749
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 5750
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 5751
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOp(Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 5750
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5753
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5754
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 3088
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 3089
    iget-object v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/OpReorderer$Callback;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 3090
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/OpReorderer$Callback;->mExistingUpdateTypes:I

    .line 3091
    return-void
.end method
