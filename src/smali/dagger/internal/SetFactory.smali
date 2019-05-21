.class public final Ldagger/internal/SetFactory;
.super Ljava/lang/Object;
.source "SetFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/SetFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final collectionProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Collection",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private final individualProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/inject/Provider",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create$5166KOBMC4NMOOBECSNKUOJACLHN8EP99HI62PR7CLP2UQBEEHIN4RJ1DGNKCOB3EHNN4U9R(Ljava/lang/Object;)Ljavax/inject/Provider;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavax/inject/Provider",
            "<TT;>;>;",
            "Ljava/util/List",
            "<",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Collection",
            "<TT;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Ldagger/internal/SetFactory;->individualProviders:Ljava/util/List;

    .line 103
    iput-object p2, p0, Ldagger/internal/SetFactory;->collectionProviders:Ljava/util/List;

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;B)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ldagger/internal/SetFactory;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static builder(II)Ldagger/internal/SetFactory$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)",
            "Ldagger/internal/SetFactory$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ldagger/internal/SetFactory$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ldagger/internal/SetFactory$Builder;-><init>(IIB)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 40
    .line 1115
    iget-object v0, p0, Ldagger/internal/SetFactory;->individualProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1120
    new-instance v4, Ljava/util/ArrayList;

    iget-object v2, p0, Ldagger/internal/SetFactory;->collectionProviders:Ljava/util/List;

    .line 1121
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1122
    iget-object v2, p0, Ldagger/internal/SetFactory;->collectionProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    move v2, v1

    move v3, v0

    :goto_0
    if-ge v2, v5, :cond_0

    .line 1123
    iget-object v0, p0, Ldagger/internal/SetFactory;->collectionProviders:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1124
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/2addr v3, v6

    .line 1125
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1128
    :cond_0
    invoke-static {v3}, Ldagger/internal/DaggerCollections;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v3

    .line 1129
    iget-object v0, p0, Ldagger/internal/SetFactory;->individualProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_1

    .line 1130
    iget-object v0, p0, Ldagger/internal/SetFactory;->individualProviders:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1129
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1132
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_3

    .line 1133
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1134
    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1132
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1138
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 40
    return-object v0
.end method
