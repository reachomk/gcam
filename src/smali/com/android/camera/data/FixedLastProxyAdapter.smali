.class final Lcom/android/camera/data/FixedLastProxyAdapter;
.super Lcom/android/camera/data/FilmstripDataAdapterProxy;
.source "FixedLastProxyAdapter.java"


# instance fields
.field private lastData:Lcom/android/camera/data/FilmstripItem;

.field private final metadataLoader$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9LIN8OB4C5Q62J3FC5I6ASHR:Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/filmstrip/FilmstripDataAdapter;Lcom/android/camera/data/FilmstripItem;Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/FilmstripDataAdapterProxy;-><init>(Landroid/content/Context;Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V

    .line 35
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iput-object p3, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->lastData:Lcom/android/camera/data/FilmstripItem;

    .line 37
    iput-object p4, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->metadataLoader$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9LIN8OB4C5Q62J3FC5I6ASHR:Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;

    .line 38
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/camera/data/FilmstripDataAdapterProxy;->addListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V

    .line 43
    return-void
.end method

.method public final findByContentUri(Landroid/net/Uri;)I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public final getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    .line 115
    if-ge p1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    .line 117
    :cond_0
    if-ne p1, v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->lastData:Lcom/android/camera/data/FilmstripItem;

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemAt(I)Lcom/android/camera/data/FilmstripItem;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    .line 49
    if-ge p1, v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 51
    :cond_0
    if-ne p1, v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->lastData:Lcom/android/camera/data/FilmstripItem;

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    .line 103
    if-ge p1, v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemViewType(I)I

    move-result v0

    .line 108
    :goto_0
    return v0

    .line 105
    :cond_0
    if-ne p1, v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->lastData:Lcom/android/camera/data/FilmstripItem;

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getItemViewType$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM8OBKC4NKCQBCDLPN8SJ9E14N8PBDAHSN0P9R()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getTotalNumber()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getView$51662RJ4E9NMIP1FEPKMATPFAPKMATPR95666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94APKM8PBF8DM6IORBCLI46OBCDHH62ORB7CKKOOBECHP6UQB45TR6IPBN5TB6IPBN7C______(Landroid/view/View;ILcom/android/camera/one/v2/lifecycle/StartTasks;)Landroid/view/View;
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    .line 89
    if-ge p2, v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getView$51662RJ4E9NMIP1FEPKMATPFAPKMATPR95666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94APKM8PBF8DM6IORBCLI46OBCDHH62ORB7CKKOOBECHP6UQB45TR6IPBN5TB6IPBN7C______(Landroid/view/View;ILcom/android/camera/one/v2/lifecycle/StartTasks;)Landroid/view/View;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 91
    :cond_0
    if-ne p2, v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->lastData:Lcom/android/camera/data/FilmstripItem;

    iget v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->suggestedWidth:I

    iget v2, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->suggestedHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/FilmstripItem;->setSuggestedSize(II)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->lastData:Lcom/android/camera/data/FilmstripItem;

    .line 94
    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    const/4 v3, 0x0

    .line 93
    invoke-interface {v0, v1, v2, v3, p3}, Lcom/android/camera/data/FilmstripItem;->createView$51666RRD5TJMURR7DHIIUORFDLMMURHFC9GN6P9F9TO78QBFDPGMOEQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR4C5Q62BQCDTHM2R26D5M6QSRKE9KN0H31EHGK2P31E1Q6ASHRB9666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94APKM8PBF8DM6IORBCLI46OBCDHH62ORB7CKKOOBECHP6UQB45TR6IPBN5TB6IPBN7C______(Lcom/google/common/base/Optional;Lcom/android/camera/filmstrip/FilmstripDataAdapter;ZLcom/android/camera/one/v2/lifecycle/StartTasks;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMetadataUpdatedAt(I)Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->isMetadataUpdatedAt(I)Z

    move-result v0

    .line 138
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->lastData:Lcom/android/camera/data/FilmstripItem;

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/Metadata;->isLoaded()Z

    move-result v0

    goto :goto_0
.end method

.method public final removeAt(I)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->removeAt(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public final updateItemAt(ILcom/android/camera/data/FilmstripItem;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    .line 73
    if-ge p1, v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->updateItemAt(ILcom/android/camera/data/FilmstripItem;)V

    .line 78
    :cond_0
    return-void

    .line 75
    :cond_1
    if-ne p1, v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot update fixed last item"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final updateMetadataAt(I)Landroid/os/AsyncTask;
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->adapter$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9HNM6OBC8PKMORBJEHP6IS24C5Q62GB4C5O78PBI7C______:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->updateMetadataAt(I)Landroid/os/AsyncTask;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->metadataLoader$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F9LIN8OB4C5Q62J3FC5I6ASHR:Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;

    iget-object v1, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/data/FixedLastProxyAdapter;->lastData:Lcom/android/camera/data/FilmstripItem;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/onecameraadaptor/OneCameraAdaptorModule;->loadMetadata(Landroid/content/Context;Lcom/android/camera/data/FilmstripItem;)Z

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method
