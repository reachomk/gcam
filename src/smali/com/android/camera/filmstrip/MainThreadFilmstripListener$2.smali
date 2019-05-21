.class final Lcom/android/camera/filmstrip/MainThreadFilmstripListener$2;
.super Ljava/lang/Object;
.source "MainThreadFilmstripListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/MainThreadFilmstripListener;->onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/MainThreadFilmstripListener;

.field private synthetic val$reporter:Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/MainThreadFilmstripListener;Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$2;->this$0:Lcom/android/camera/filmstrip/MainThreadFilmstripListener;

    iput-object p2, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$2;->val$reporter:Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$2;->this$0:Lcom/android/camera/filmstrip/MainThreadFilmstripListener;

    invoke-static {v0}, Lcom/android/camera/filmstrip/MainThreadFilmstripListener;->access$100(Lcom/android/camera/filmstrip/MainThreadFilmstripListener;)Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/filmstrip/MainThreadFilmstripListener$2;->val$reporter:Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemUpdated(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V

    .line 42
    return-void
.end method
