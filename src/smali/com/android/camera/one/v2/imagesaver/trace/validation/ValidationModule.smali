.class public Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;
.super Ljava/lang/Object;
.source "ValidationModule.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;"
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final maxListeners:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->listeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1019
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->maxListeners:I

    .line 1020
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V
    .locals 4

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->listeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1024
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->maxListeners:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->maxListeners:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "More listeners added than is allowed in configured capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1023
    invoke-static {v0, v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 1026
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->listeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 1027
    return-void

    .line 1024
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFilmstripItemInserted(ILcom/android/camera/data/FilmstripItem;)V
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->listeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    .line 1050
    invoke-interface {v0, p1, p2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemInserted(ILcom/android/camera/data/FilmstripItem;)V

    goto :goto_0

    .line 1052
    :cond_0
    return-void
.end method

.method public onFilmstripItemRemoved(ILcom/android/camera/data/FilmstripItem;)V
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->listeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    .line 1057
    invoke-interface {v0, p1, p2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemRemoved(ILcom/android/camera/data/FilmstripItem;)V

    goto :goto_0

    .line 1059
    :cond_0
    return-void
.end method

.method public onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->listeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    .line 1043
    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V

    goto :goto_0

    .line 1045
    :cond_0
    return-void
.end method

.method public onFilmstripItemsLoaded()V
    .locals 2

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/trace/validation/ValidationModule;->listeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    .line 1036
    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemsLoaded()V

    goto :goto_0

    .line 1038
    :cond_0
    return-void
.end method
