class EventsController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false

  def index
    render json: {
      events: Event.all.as_json
    }
  end

  def show
    render json: {
      event: event.as_json
    }
  end

  def create
    byebug
    if event = Event.create(event_params)
      render json: {
        event: event.as_json
      }
    else
      render json: {
        errors: event.errors
      }
    end
  end

  def update
    if event.update event_params
      render json: {
        event: event.as_json
      }
    else
      render json: {
        errors: event.errors
      }
    end
  end

  private

  def event
    @event ||= Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(
      :sid, :cid, :signature, :signature_gen, :signature_id, :signature_rev, 
      :timestamp, :unified_event_id, :unified_event_ref, :unified_ref_time,
      :priority, :status, :src_ip, :dst_ip, :src_port, :dst_port, 
      :icmp_type, :icmp_code, :ip_proto, :ip_ver, :ip_hlen, :ip_tos,
      :ip_len, :ip_id, :ip_flags, :ip_off, :ip_ttl, :ip_csum, :last_modified,
      :last_uid, :abuse_queue, :abuse_sent
    )
  end
end