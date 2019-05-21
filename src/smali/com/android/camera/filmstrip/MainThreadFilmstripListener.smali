.class public final Lcom/android/camera/filmstrip/MainThreadFilmstripListener;
.super Ljava/lang/Object;
.source "MainThreadFilmstripListener.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/filmstrip/MainThreadFilmstripListener$MainOrDirectExecutor;
    }
.end annotation


# instance fields
.field private final listener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

.field private final mainOrDirectExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$MainOrDirectExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$MainOrDirectExecutor;-><init>(B)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener;->mainOrDirectExecutor:Ljava/util/concurrent/Executor;

    .line 22
    iput-object p1, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener;->listener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    .line 23
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/filmstrip/MainThreadFilmstripListener;)Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener;->listener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    return-object v0
.end method


# virtual methods
.method public final onFilmstripItemInserted(ILcom/android/camera/data/FilmstripItem;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener;->mainOrDirectExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$3;-><init>(Lcom/android/camera/filmstrip/MainThreadFilmstripListener;ILcom/android/camera/data/FilmstripItem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public final onFilmstripItemRemoved(ILcom/android/camera/data/FilmstripItem;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener;->mainOrDirectExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$4;-><init>(Lcom/android/camera/filmstrip/MainThreadFilmstripListener;ILcom/android/camera/data/FilmstripItem;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public final onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener;->mainOrDirectExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$2;-><init>(Lcom/android/camera/filmstrip/MainThreadFilmstripListener;Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method public final onFilmstripItemsLoaded()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener;->mainOrDirectExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$1;

    invoke-direct {v1, p0}, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$1;-><init>(Lcom/android/camera/filmstrip/MainThreadFilmstripListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method
