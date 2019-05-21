.class Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator$1;
.super Ljava/lang/Object;
.source "RefCountedTicketCreator.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function;"
    }
.end annotation


# instance fields
.field final synthetic val$tickets:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1076
    iput p1, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator$1;->val$tickets:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/apps/camera/async/CloseableList;)Lcom/google/android/apps/camera/async/CloseableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/CloseableList",
            "<",
            "Lcom/google/android/apps/camera/async/CloseableList",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;>;)",
            "Lcom/google/android/apps/camera/async/CloseableList",
            "<",
            "Lcom/android/camera/audio/SingleUseSoundPlayer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1079
    new-instance v3, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-direct {v3}, Lcom/google/android/apps/camera/async/CloseableList;-><init>()V

    move v1, v2

    .line 1080
    :goto_0
    iget v0, p0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator$1;->val$tickets:I

    if-ge v1, v0, :cond_1

    .line 1082
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    invoke-virtual {p1}, Lcom/google/android/apps/camera/async/CloseableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1084
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/audio/SingleUseSoundPlayer;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1086
    :cond_0
    new-instance v0, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool$TicketImpl;

    invoke-direct {v0, v4, v2}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/JoinedTicketPool$TicketImpl;-><init>(Ljava/util/List;B)V

    invoke-virtual {v3, v0}, Lcom/google/android/apps/camera/async/CloseableList;->add(Ljava/lang/Object;)Z

    .line 1080
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1088
    :cond_1
    return-object v3
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2076
    check-cast p1, Lcom/google/android/apps/camera/async/CloseableList;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/imagemanagement/ticketpool/RefCountedTicketCreator$1;->apply(Lcom/google/android/apps/camera/async/CloseableList;)Lcom/google/android/apps/camera/async/CloseableList;

    move-result-object v0

    return-object v0
.end method
