.class public abstract Lcom/android/camera/data/FilmstripDataAdapterProxy;
.super Ljava/lang/Object;
.source "FilmstripDataAdapterProxy.java"

# interfaces
.implements Lcom/android/camera/filmstrip/FilmstripDataAdapter;


# instance fields
.field protected final adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

.field protected final context:Landroid/content/Context;

.field protected suggestedHeight:I

.field protected suggestedWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p2, :cond_0

    .line 31
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "data adapter is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    .line 35
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->addListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V

    .line 47
    return-void
.end method

.method public final addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z

    move-result v0

    return v0
.end method

.method public final cancelItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/AsyncTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->cancelItems(Ljava/util/List;)V

    .line 112
    return-void
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->clear()V

    .line 77
    return-void
.end method

.method public final executeDeletion()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->executeDeletion()Z

    move-result v0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public final getItemsInRange(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemsInRange(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isMetadataUpdatedAt(I)Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->isMetadataUpdatedAt(I)Z

    move-result v0

    return v0
.end method

.method public final preloadItems(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->preloadItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final refresh(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->refresh(Landroid/net/Uri;)V

    .line 92
    return-void
.end method

.method public final requestLoad(Lcom/google/android/apps/camera/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->requestLoad(Lcom/google/android/apps/camera/util/Callback;)V

    .line 57
    return-void
.end method

.method public final requestLoadNewPhotos()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->requestLoadNewPhotos()V

    .line 67
    return-void
.end method

.method public final requestRemoveDeleted()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->requestRemoveDeleted()V

    .line 62
    return-void
.end method

.method public final setLocalDataListener(Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->setLocalDataListener(Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;)V

    .line 52
    return-void
.end method

.method public final suggestViewSizeBound(II)V
    .locals 1

    .prologue
    .line 39
    iput p1, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->suggestedWidth:I

    .line 40
    iput p2, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->suggestedHeight:I

    .line 41
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->suggestViewSizeBound(II)V

    .line 42
    return-void
.end method

.method public final undoDeletion()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->undoDeletion()Z

    move-result v0

    return v0
.end method

.method public updateMetadataAt(I)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/camera/data/FilmstripDataAdapterProxy;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->updateMetadataAt(I)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method
