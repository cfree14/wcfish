
#' Plot data from the CALFISH database
#'
#' Prepares a quick plot of the datasets published in the CALFISH database.
#'
#' @param dataset Name of one of the CALFISH database datasets (lowercase with underscores)
#' @return A plot of one of the CALFISH database datasets
#' @examples
#' # Plot CDFW datasets quickly
#' plot_data(dataset="cdfw_waters")
#' plot_data(dataset="cdfw_ports")
#' plot_data(dataset="cdfw_n_comm_fishers")
#' plot_data(dataset="cdfw_n_comm_vessels_length")
#' plot_data(dataset="cdfw_n_comm_vessels_port")
#' plot_data(dataset="cdfw_n_comm_vessels")
#' plot_data(dataset="cdfw_cpfv")
#' plot_data(dataset="cdfw_cpfv_effort")
#' plot_data(dataset="cdfw_kelp")
#' plot_data(dataset="cdfw_kelp_tots")
#' @export
plot_data <- function(dataset){

  # Datasets
  datasets <- c("cdfw_waters", "cdfw_ports", "cdfw_n_comm_fishers", "cdfw_n_comm_vessels_length",
                "cdfw_n_comm_vessels_port", "cdfw_n_comm_vessels", "cdfw_cpfv", "cdfw_cpfv_effort",
                "cdfw_kelp", "cdfw_kelp_tots")

  # Check
  if(!dataset %in% datasets){stop(paste("Dataset is not one of the following: ", paste(datasets, collapse=", ")))}

  # Setup theme
  my_theme <-  theme(# Gridlines
                     panel.grid.major = element_blank(),
                     panel.grid.minor = element_blank(),
                     panel.background = element_blank(),
                     axis.line = element_line(colour = "black"),
                     # Legend
                     legend.key.size = unit(0.5, "cm"),
                     legend.background = element_rect(fill=alpha('blue', 0)))


  # Plot waters
  if(dataset=="cdfw_waters"){

    # Get data
    data <- wcfish::cdfw_waters

    # Summarize
    sdata <- data %>%
      group_by(year, waters) %>%
      summarize(landings_kg=sum(landings_kg))

    # Plot
    g <- ggplot(sdata, aes(x=year, y=landings_kg/1e3/1e3, fill=waters)) +
      geom_bar(stat="identity", col="grey30", lwd=0.1) +
      # Labels
      labs(x="Year", y="Landings (1000s mt)", title="Landings/shipments by waters") +
      # Axis
      scale_x_continuous(breaks=seq(1900,2020,10)) +
      # Legend
      scale_fill_discrete(name="Waters") +
      # Theme
      theme_bw() +  my_theme
    g

  }

  # Plot ports
  if(dataset=="cdfw_ports"){

    # Get data
    data <- wcfish::cdfw_ports

    # Summarize
    sdata <- data %>%
      group_by(year, port_complex) %>%
      summarize(landings_kg=sum(landings_kg))

    # Plot
    g <- ggplot(sdata, aes(x=year, y=landings_kg/1e3/1e3, fill=port_complex)) +
      geom_bar(stat="identity", col="grey30", lwd=0.1) +
      # Labels
      labs(x="Year", y="Landings (1000s mt)", title="Landings/shipments by port complex") +
      # Axis
      scale_x_continuous(breaks=seq(1900,2020,10)) +
      # Legend
      scale_fill_discrete(name="Port complex") +
      # Theme
      theme_bw() +  my_theme
    g

  }

  # Plot n comm fishers
  if(dataset=="cdfw_n_comm_fishers"){

    # Get data
    data <- wcfish::cdfw_n_comm_fishers

    # Summarize
    sdata <- data %>%
      group_by(year, region) %>%
      summarize(nfishers=sum(nfishers))

    # Plot
    g <- ggplot(sdata, aes(x=year, y=nfishers, fill=region)) +
      geom_bar(stat="identity", col="grey30", lwd=0.1) +
      # Labels
      labs(x="Year", y="Number of fishers", title="Number of fishers by port complex") +
      # Axis
      scale_x_continuous(breaks=seq(1900,2020,10)) +
      # Legend
      scale_fill_discrete(name="Port complex") +
      # Theme
      theme_bw() +  my_theme
    g

  }

  # Plot cdfw_n_comm_vessels_length
  if(dataset=="cdfw_n_comm_vessels_length"){

    # Get data
    data <- wcfish::cdfw_n_comm_vessels_length

    # Summarize
    sdata <- data %>%
      group_by(year, length_class_group) %>%
      summarize(nvessels=sum(nvessels))

    # Plot
    g <- ggplot(sdata, aes(x=year, y=nvessels, fill=length_class_group)) +
      geom_bar(stat="identity", col="grey30", lwd=0.1) +
      # Labels
      labs(x="Year", y="Number of vessels", title="Number of vessels by length class") +
      # Axis
      scale_x_continuous(breaks=seq(1900,2020,10)) +
      # Legend
      scale_fill_discrete(name="Length class") +
      # Theme
      theme_bw() +  my_theme
    g

  }

  # Plot cdfw_n_comm_vessels_port
  if(dataset=="cdfw_n_comm_vessels_port"){

    # Get data
    data <- wcfish::cdfw_n_comm_vessels_port

    # Summarize
    sdata <- data %>%
      group_by(year, port_complex) %>%
      summarize(nvessels=sum(nvessels))

    # Plot
    g <- ggplot(sdata, aes(x=year, y=nvessels, fill=port_complex)) +
      geom_bar(stat="identity", col="grey30", lwd=0.1) +
      # Labels
      labs(x="Year", y="Number of vessels", title="Number of vessels by port complex") +
      # Axis
      scale_x_continuous(breaks=seq(1900,2020,10)) +
      # Legend
      scale_fill_discrete(name="Port complex") +
      # Theme
      theme_bw() +  my_theme
    g

  }

  # Plot cdfw_n_comm_vessels
  if(dataset=="cdfw_n_comm_vessels"){

    # Get data
    data <- wcfish::cdfw_n_comm_vessels

    # Plot
    g <- ggplot(data, aes(x=year, y=nvessels)) +
      geom_bar(stat="identity", col="grey30", lwd=0.1) +
      # Labels
      labs(x="Year", y="Number of vessels", title="Number of vessels statewide") +
      # Axis
      scale_x_continuous(breaks=seq(1900,2020,10)) +
      # Legend
      scale_fill_discrete(name="Port complex") +
      # Theme
      theme_bw() +  my_theme
    g

  }

  # Plot cdfw_cpfv
  if(dataset=="cdfw_cpfv"){

    # Get data
    data <- wcfish::cdfw_cpfv

    # Summarize
    sdata <- data %>%
      group_by(year, category) %>%
      summarize(landings_n=sum(landings_n))

    # Plot
    g <- ggplot(sdata, aes(x=year, y=landings_n/1e6, fill=category)) +
      geom_bar(stat="identity", col="grey30", lwd=0.1) +
      # Labels
      labs(x="Year", y="Millions of landed fish", title="Number of CPFV landings by taxa") +
      # Axis
      scale_x_continuous(breaks=seq(1900,2020,10)) +
      # Legend
      scale_fill_discrete(name="Species category") +
      # Theme
      theme_bw() +  my_theme
    g

  }

  # Plot cdfw_cpfv_effort
  if(dataset=="cdfw_cpfv_effort"){

    # Get data
    data <- wcfish::cdfw_cpfv_effort

    # Format data
    sdata <- data %>%
      select(region:hours_n) %>%
      mutate(anglers_n=anglers_n/1e3,
             days_n=days_n/1e3,
             hours_n=hours_n/1e6,
             landings_n=landings_n/1e6) %>%
      gather(key="metric", value='value', 5:ncol(.)) %>%
      mutate(metric=recode(metric,
                           "anglers_n"="Thousands of anglers",
                           "cpfvs_n"="Number of CPFVs",
                           "days_n"="Thousands of angler days",
                           "hours_n"="Millions of angler hours",
                           "landings_n"="Millions of landed fish"))

    # Plot data
    g <- ggplot(sdata, aes(x=year, y=value)) +
      facet_wrap(~metric, scales="free_y") +
      geom_bar(stat="identity", col="grey30", lwd=0.1) +
      # Labels
      labs(x="Year", y="Value", title="CPFV effort by various metrics") +
      # Axis
      scale_x_continuous(breaks=seq(1900,2020,10)) +
      # Theme
      theme_bw() +  my_theme
    g

  }

  # Plot cdfw_cpfv
  if(dataset=="cdfw_kelp"){

    # Get data
    data <- wcfish::cdfw_kelp

    # Summarize
    sdata <- data %>%
      select(year, open_bed_t, leased_bed_t) %>%
      gather(key="bed_type", value="harvest_t", 2:ncol(.)) %>%
      mutate(bed_type=recode(bed_type,
                             "leased_bed_t"="Leased",
                             "open_bed_t"="Open"))

    # Plot
    g <- ggplot(sdata, aes(x=year, y=harvest_t/1e3, fill=bed_type)) +
      geom_bar(stat="identity", col="grey30", lwd=0.1) +
      # Labels
      labs(x="Year", y="Kelp harvest (1000s short tons)", title="Kelp harvest by bed type") +
      # Axis
      scale_x_continuous(breaks=seq(1900,2020,10)) +
      # Legend
      scale_fill_discrete(name="Bed type") +
      # Theme
      theme_bw() +  my_theme
    g

  }

  # Plot cdfw_kelp_tots
  if(dataset=="cdfw_kelp_tots"){

    # Get data
    data <- wcfish::cdfw_kelp_tots

    # Plot
    g <- ggplot(data, aes(x=year, y=harvest_t/1e3)) +
      geom_bar(stat="identity", col="grey30", lwd=0.1) +
      # Labels
      labs(x="Year", y="Kelp harvest (1000s short tons)", title="Kelp harvest") +
      # Axis
      scale_x_continuous(breaks=seq(1900,2020,10)) +
      # Theme
      theme_bw() +  my_theme
    g

  }

  # Return
  return(g)

}






