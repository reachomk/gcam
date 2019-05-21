.class public Landroid/support/v4/os/AsyncTaskCompat;
.super Ljava/lang/Object;
.source "AsyncTaskCompat.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParent:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 4047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4048
    iput-object p1, p0, Landroid/support/v4/os/AsyncTaskCompat;->mView:Landroid/view/View;

    .line 4049
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2043
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 3020
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2046
    :cond_0
    return-void
.end method

.method public static endSection()V
    .locals 2

    .prologue
    .line 3056
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 4024
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3059
    :cond_0
    return-void
.end method

.method static instantiate(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2024
    new-instance v0, Landroid/support/v4/os/ParcelableCompatCreatorHoneycombMR2;

    invoke-direct {v0, p0}, Landroid/support/v4/os/ParcelableCompatCreatorHoneycombMR2;-><init>(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)V

    return-object v0
.end method

.method public static newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1036
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 1037
    invoke-static {p0}, Landroid/support/v4/os/AsyncTaskCompat;->instantiate(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    .line 1039
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/os/ParcelableCompat$CompatCreator;

    invoke-direct {v0, p0}, Landroid/support/v4/os/ParcelableCompat$CompatCreator;-><init>(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 2

    .prologue
    .line 4235
    invoke-virtual {p0}, Landroid/support/v4/os/AsyncTaskCompat;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 4236
    iget-object v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/os/AsyncTaskCompat;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    .line 4239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 2

    .prologue
    .line 4252
    invoke-virtual {p0}, Landroid/support/v4/os/AsyncTaskCompat;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 4253
    iget-object v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/os/AsyncTaskCompat;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    .line 4256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4191
    invoke-virtual {p0}, Landroid/support/v4/os/AsyncTaskCompat;->isNestedScrollingEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/v4/os/AsyncTaskCompat;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_5

    .line 4192
    if-nez p1, :cond_0

    if-eqz p2, :cond_6

    .line 4195
    :cond_0
    if-eqz p4, :cond_7

    .line 4196
    iget-object v2, p0, Landroid/support/v4/os/AsyncTaskCompat;->mView:Landroid/view/View;

    invoke-virtual {v2, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4197
    aget v3, p4, v0

    .line 4198
    aget v2, p4, v1

    .line 4201
    :goto_0
    if-nez p3, :cond_2

    .line 4202
    iget-object v4, p0, Landroid/support/v4/os/AsyncTaskCompat;->mTempNestedScrollConsumed:[I

    if-nez v4, :cond_1

    .line 4203
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Landroid/support/v4/os/AsyncTaskCompat;->mTempNestedScrollConsumed:[I

    .line 4205
    :cond_1
    iget-object p3, p0, Landroid/support/v4/os/AsyncTaskCompat;->mTempNestedScrollConsumed:[I

    .line 4207
    :cond_2
    aput v0, p3, v0

    .line 4208
    aput v0, p3, v1

    .line 4209
    iget-object v4, p0, Landroid/support/v4/os/AsyncTaskCompat;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v5, p0, Landroid/support/v4/os/AsyncTaskCompat;->mView:Landroid/view/View;

    invoke-static {v4, v5, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    .line 4211
    if-eqz p4, :cond_3

    .line 4212
    iget-object v4, p0, Landroid/support/v4/os/AsyncTaskCompat;->mView:Landroid/view/View;

    invoke-virtual {v4, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4213
    aget v4, p4, v0

    sub-int v3, v4, v3

    aput v3, p4, v0

    .line 4214
    aget v3, p4, v1

    sub-int v2, v3, v2

    aput v2, p4, v1

    .line 4216
    :cond_3
    aget v2, p3, v0

    if-nez v2, :cond_4

    aget v2, p3, v1

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    .line 4222
    :cond_5
    :goto_1
    return v0

    .line 4217
    :cond_6
    if-eqz p4, :cond_5

    .line 4218
    aput v0, p4, v0

    .line 4219
    aput v0, p4, v1

    goto :goto_1

    :cond_7
    move v2, v0

    move v3, v0

    goto :goto_0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 4153
    invoke-virtual {p0}, Landroid/support/v4/os/AsyncTaskCompat;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    .line 4154
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    .line 4157
    :cond_0
    if-eqz p5, :cond_4

    .line 4158
    iget-object v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4159
    aget v1, p5, v7

    .line 4160
    aget v0, p5, v9

    move v6, v0

    move v8, v1

    .line 4163
    :goto_0
    iget-object v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/os/AsyncTaskCompat;->mView:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    .line 4166
    if-eqz p5, :cond_1

    .line 4167
    iget-object v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mView:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4168
    aget v0, p5, v7

    sub-int/2addr v0, v8

    aput v0, p5, v7

    .line 4169
    aget v0, p5, v9

    sub-int/2addr v0, v6

    aput v0, p5, v9

    :cond_1
    move v7, v9

    .line 4178
    :cond_2
    :goto_1
    return v7

    .line 4172
    :cond_3
    if-eqz p5, :cond_2

    .line 4174
    aput v7, p5, v7

    .line 4175
    aput v7, p5, v9

    goto :goto_1

    :cond_4
    move v6, v7

    move v8, v7

    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 4091
    iget-object v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 4077
    iget-boolean v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mIsNestedScrollingEnabled:Z

    return v0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .prologue
    .line 4061
    iget-boolean v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_0

    .line 4062
    iget-object v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 4064
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/os/AsyncTaskCompat;->mIsNestedScrollingEnabled:Z

    .line 4065
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 4106
    invoke-virtual {p0}, Landroid/support/v4/os/AsyncTaskCompat;->hasNestedScrollingParent()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 4125
    :goto_0
    return v0

    .line 4110
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/os/AsyncTaskCompat;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4111
    iget-object v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 4112
    iget-object v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mView:Landroid/view/View;

    .line 4113
    :goto_1
    if-eqz v1, :cond_3

    .line 4114
    iget-object v3, p0, Landroid/support/v4/os/AsyncTaskCompat;->mView:Landroid/view/View;

    invoke-static {v1, v0, v3, p1}, Landroid/support/v4/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4115
    iput-object v1, p0, Landroid/support/v4/os/AsyncTaskCompat;->mNestedScrollingParent:Landroid/view/ViewParent;

    .line 4116
    iget-object v3, p0, Landroid/support/v4/os/AsyncTaskCompat;->mView:Landroid/view/View;

    invoke-static {v1, v0, v3, p1}, Landroid/support/v4/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    move v0, v2

    .line 4117
    goto :goto_0

    .line 4119
    :cond_1
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 4120
    check-cast v0, Landroid/view/View;

    .line 4122
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    .line 4125
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopNestedScroll()V
    .locals 2

    .prologue
    .line 4136
    iget-object v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 4137
    iget-object v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/os/AsyncTaskCompat;->mView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V

    .line 4138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/os/AsyncTaskCompat;->mNestedScrollingParent:Landroid/view/ViewParent;

    .line 4140
    :cond_0
    return-void
.end method
