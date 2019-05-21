.class public final Lcom/android/camera/widget/Preloader;
.super Ljava/lang/Object;
.source "Preloader.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/Preloader$ItemLoader;,
        Lcom/android/camera/widget/Preloader$ItemSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private itemLoadTokens:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/util/List",
            "<TY;>;>;"
        }
    .end annotation
.end field

.field private itemLoader:Lcom/android/camera/widget/Preloader$ItemLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/widget/Preloader$ItemLoader",
            "<TT;TY;>;"
        }
    .end annotation
.end field

.field private itemSource:Lcom/android/camera/widget/Preloader$ItemSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/widget/Preloader$ItemSource",
            "<TT;>;"
        }
    .end annotation
.end field

.field private lastEnd:I

.field private lastStart:I

.field private lastVisibleItem:I

.field private final loadAheadItems:I

.field private final maxConcurrentPreloads:I

.field private scrollingDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "Preloader"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/widget/Preloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/android/camera/widget/Preloader$ItemSource;Lcom/android/camera/widget/Preloader$ItemLoader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/camera/widget/Preloader$ItemSource",
            "<TT;>;",
            "Lcom/android/camera/widget/Preloader$ItemLoader",
            "<TT;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/widget/Preloader;->lastEnd:I

    .line 67
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/Preloader;->itemLoadTokens:Ljava/util/Queue;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/Preloader;->scrollingDown:Z

    .line 73
    iput-object p2, p0, Lcom/android/camera/widget/Preloader;->itemSource:Lcom/android/camera/widget/Preloader$ItemSource;

    .line 74
    iput-object p3, p0, Lcom/android/camera/widget/Preloader;->itemLoader:Lcom/android/camera/widget/Preloader$ItemLoader;

    .line 75
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/widget/Preloader;->loadAheadItems:I

    .line 77
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/camera/widget/Preloader;->maxConcurrentPreloads:I

    .line 78
    return-void
.end method


# virtual methods
.method public final cancelAllLoads()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/widget/Preloader;->itemLoadTokens:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 135
    iget-object v2, p0, Lcom/android/camera/widget/Preloader;->itemLoader:Lcom/android/camera/widget/Preloader$ItemLoader;

    invoke-interface {v2, v0}, Lcom/android/camera/widget/Preloader$ItemLoader;->cancelItems(Ljava/util/List;)V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/Preloader;->itemLoadTokens:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 138
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 148
    iget-boolean v2, p0, Lcom/android/camera/widget/Preloader;->scrollingDown:Z

    .line 150
    iget v0, p0, Lcom/android/camera/widget/Preloader;->lastVisibleItem:I

    if-le p2, v0, :cond_4

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/Preloader;->scrollingDown:Z

    .line 153
    add-int v0, p2, p3

    .line 160
    :goto_0
    iget-boolean v3, p0, Lcom/android/camera/widget/Preloader;->scrollingDown:Z

    if-eq v2, v3, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/camera/widget/Preloader;->cancelAllLoads()V

    .line 168
    :cond_0
    if-eq v0, v1, :cond_3

    .line 169
    iget-boolean v3, p0, Lcom/android/camera/widget/Preloader;->scrollingDown:Z

    .line 1090
    if-eqz v3, :cond_5

    .line 1091
    iget v1, p0, Lcom/android/camera/widget/Preloader;->lastEnd:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1092
    iget v1, p0, Lcom/android/camera/widget/Preloader;->loadAheadItems:I

    add-int/2addr v1, v0

    iget-object v4, p0, Lcom/android/camera/widget/Preloader;->itemSource:Lcom/android/camera/widget/Preloader$ItemSource;

    invoke-interface {v4}, Lcom/android/camera/widget/Preloader$ItemSource;->getCount()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1098
    :goto_1
    sget-object v4, Lcom/android/camera/widget/Preloader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x4c

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "preload first="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " increasing="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " start="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " end="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iput v1, p0, Lcom/android/camera/widget/Preloader;->lastEnd:I

    .line 1103
    iput v2, p0, Lcom/android/camera/widget/Preloader;->lastStart:I

    .line 1105
    if-nez v2, :cond_1

    if-eqz v1, :cond_3

    .line 1109
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/Preloader;->itemSource:Lcom/android/camera/widget/Preloader$ItemSource;

    invoke-interface {v0, v2, v1}, Lcom/android/camera/widget/Preloader$ItemSource;->getItemsInRange(II)Ljava/util/List;

    move-result-object v0

    .line 1110
    if-nez v3, :cond_2

    .line 1111
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1113
    :cond_2
    iget-object v1, p0, Lcom/android/camera/widget/Preloader;->itemLoader:Lcom/android/camera/widget/Preloader$ItemLoader;

    invoke-interface {v1, v0}, Lcom/android/camera/widget/Preloader$ItemLoader;->preloadItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1117
    iget-object v1, p0, Lcom/android/camera/widget/Preloader;->itemLoadTokens:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1127
    iget-object v0, p0, Lcom/android/camera/widget/Preloader;->itemLoadTokens:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget v1, p0, Lcom/android/camera/widget/Preloader;->maxConcurrentPreloads:I

    if-le v0, v1, :cond_3

    .line 1128
    iget-object v0, p0, Lcom/android/camera/widget/Preloader;->itemLoadTokens:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1129
    iget-object v1, p0, Lcom/android/camera/widget/Preloader;->itemLoader:Lcom/android/camera/widget/Preloader$ItemLoader;

    invoke-interface {v1, v0}, Lcom/android/camera/widget/Preloader$ItemLoader;->cancelItems(Ljava/util/List;)V

    .line 172
    :cond_3
    iput p2, p0, Lcom/android/camera/widget/Preloader;->lastVisibleItem:I

    .line 173
    return-void

    .line 154
    :cond_4
    iget v0, p0, Lcom/android/camera/widget/Preloader;->lastVisibleItem:I

    if-ge p2, v0, :cond_6

    .line 156
    iput-boolean v4, p0, Lcom/android/camera/widget/Preloader;->scrollingDown:Z

    move v0, p2

    .line 157
    goto/16 :goto_0

    .line 1094
    :cond_5
    iget v1, p0, Lcom/android/camera/widget/Preloader;->loadAheadItems:I

    sub-int v1, v0, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1095
    iget v1, p0, Lcom/android/camera/widget/Preloader;->lastStart:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method
